using System.Windows;
using Utilities;
using MemoryGame.MemoryGameService;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para RestorePassword.xaml
    /// </summary>
    public partial class RestorePassword : Window
    {
        private string _emailAddress;
        private string _username;
        public RestorePassword()
        {
            InitializeComponent();
        }

        public RestorePassword(string emailAddress, string username)
        {
            InitializeComponent();
            _emailAddress = emailAddress;
            _username = username;
        }

        public bool SetNewPassword()
        {
            /*
            //string password = MD5Encryption.Encrypt(NewPasswordBox.Password);

            AccountModifiabilityServiceClient accountModifiabilityServiceClient =
                new AccountModifiabilityServiceClient();

            MemoryGameService.DataTransferObjects.PlayerCredentialsDTO playerCredentialsDTO =
                new MemoryGameService.DataTransferObjects.PlayerCredentialsDTO()
                {
                    EmailAddress = _emailAddress,
                    Password = password
                };
            
            return accountModifiabilityServiceClient.SetNewPassword(playerCredentialsDTO);
            */
            return false;
        }

        private void OkButtonClicked(object sender, RoutedEventArgs e)
        {

            if (TokenIsCorrect())
            {
                bool passwordRestored = SetNewPassword();
                if (passwordRestored)
                {
                    MessageBox.Show("Contraseña restablecida exitosamente");

                    Login loginView = new Login();
                    loginView.Show();
                    this.Close();
                }
                else
                {
                    MessageBox.Show("No se pudo restablecer la contraseña");
                }
            }
            else
            {
                MessageBox.Show(Properties.Langs.Resources.NonMatchingVerificationCode);
            }
        }

        private void SendNewCodeButtonClicked(object sender, RoutedEventArgs e)
        {

            TokenGeneratorClient tokenGeneratorClient =
                new TokenGeneratorClient();
            string newToken = tokenGeneratorClient.GenerateToken(6);

            AccountVerificationServiceClient accountVerificationServiceClient =
                new AccountVerificationServiceClient();
            accountVerificationServiceClient.AssignNewVerificationToken(_emailAddress, newToken);

            MailingServiceClient mailingServiceClient =
                new MailingServiceClient();
            mailingServiceClient.SendVerificationToken(_username, _emailAddress, newToken);

            MessageBox.Show(Properties.Langs.Resources.NewCodeSentMessage);

        }

        private bool TokenIsCorrect()
        {
            AccountVerificationServiceClient accountVerificationServiceClient =
                new AccountVerificationServiceClient();
            return accountVerificationServiceClient.VerifyToken(_emailAddress, TextBoxToken.Text);
        }

        private void BackButtonClicked(object sender, RoutedEventArgs e)
        {
            Login loginView = new Login();
            loginView.Show();
            this.Close();
        }
    }
}
