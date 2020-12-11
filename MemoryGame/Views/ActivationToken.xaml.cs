using System.Windows;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para ActivationToken.xaml
    /// </summary>
    public partial class ActivationToken : Window
    {
        private string _emailAddress;
        private string _username;
        public ActivationToken()
        {
            InitializeComponent();
        }

        public ActivationToken(string emailAddress, string username)
        {
            InitializeComponent();
            _emailAddress = emailAddress;
            _username = username;
        }

        private void OkButtonClicked(object sender, RoutedEventArgs e)
        {
            
            if (TokenIsCorrect())
            {
                if (AccountWasSuccessfullyVerified())
                {
                    MessageBox.Show(Properties.Langs.Resources.AccountVerificationSuccess);

                    Login loginView = new Login();
                    loginView.Show();
                    this.Close();
                }
                else
                {
                    MessageBox.Show(Properties.Langs.Resources.AccountVerificationError);
                }
            }
            else
            {
                MessageBox.Show(Properties.Langs.Resources.NonMatchingVerificationCode);
            }
        }
        
        private void SendNewCodeButtonClicked(object sender, RoutedEventArgs e)
        {
            
            MemoryGameService.TokenGeneratorClient tokenGeneratorClient =
                new MemoryGameService.TokenGeneratorClient();
            string newToken = tokenGeneratorClient.GenerateToken(6);

            MemoryGameService.AccountVerificationServiceClient accountVerificationServiceClient =
                new MemoryGameService.AccountVerificationServiceClient();
            accountVerificationServiceClient.AssignNewVerificationToken(_emailAddress, newToken);

            MemoryGameService.MailingServiceClient mailingServiceClient =
                new MemoryGameService.MailingServiceClient();
            mailingServiceClient.SendVerificationToken(_username, _emailAddress, newToken);

            MessageBox.Show(Properties.Langs.Resources.NewCodeSentMessage);

        }

        private bool TokenIsCorrect()
        {
            MemoryGameService.AccountVerificationServiceClient accountVerificationServiceClient =
                new MemoryGameService.AccountVerificationServiceClient();
            return accountVerificationServiceClient.VerifyToken(_emailAddress, TextBoxToken.Text);
        }

        private bool AccountWasSuccessfullyVerified()
        {
            MemoryGameService.AccountVerificationServiceClient accountVerificationServiceClient =
                new MemoryGameService.AccountVerificationServiceClient();
            return accountVerificationServiceClient.SetAccountAsVerified(_emailAddress);
        }

        private void BackButtonClicked(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindowView = new MainWindow();
            mainWindowView.Show();
            this.Close();
        }
    }
}
