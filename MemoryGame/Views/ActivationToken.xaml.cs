using System.ServiceModel;
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
        private string _newToken;
        public ActivationToken()
        {
            InitializeComponent();
        }

        public ActivationToken(string emailAddress, string username)
        {
            InitializeComponent();
            _emailAddress = emailAddress;
            _username = username;
            _newToken = "";
        }

        private void OkButtonClicked(object sender, RoutedEventArgs e)
        {
            try
            {
                TryVerifyAccount();
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show(Properties.Langs.Resources.ServerConnectionLost);
            }
        }

        private void TryVerifyAccount()
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

            try
            {
                _newToken = TryGenerateNewToken();
                bool newTokenWasAssigned = TryAssignNewVerificationToken();

                if (newTokenWasAssigned)
                {
                    TrySendNewVerificationToken();
                    MessageBox.Show(Properties.Langs.Resources.NewCodeSentMessage);
                }

            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show(Properties.Langs.Resources.ServerConnectionLost);
            }
        }

        private string TryGenerateNewToken()
        {
            MemoryGameService.TokenGeneratorClient tokenGeneratorClient =
                new MemoryGameService.TokenGeneratorClient();
            string newToken = tokenGeneratorClient.GenerateToken(6);
            return newToken;
        }

        private bool TryAssignNewVerificationToken()
        {
            MemoryGameService.AccountVerificationServiceClient accountVerificationServiceClient =
                new MemoryGameService.AccountVerificationServiceClient();

            bool newVerificationTokenWasAssignedSuccessfully =
                accountVerificationServiceClient.AssignNewVerificationToken(_emailAddress, _newToken);

            return newVerificationTokenWasAssignedSuccessfully;

        }

        private void TrySendNewVerificationToken()
        {
            MemoryGameService.MailingServiceClient mailingServiceClient =
                new MemoryGameService.MailingServiceClient();
            mailingServiceClient.SendVerificationToken(_username, _emailAddress, _newToken);
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
