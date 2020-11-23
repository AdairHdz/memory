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
            AccessibilityServiceClient client =
                new AccessibilityServiceClient();

            string password = MD5Encryption.Encrypt(NewPasswordBox.Password);

            return client.SetNewPassword(_emailAddress, password);
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
                MessageBox.Show("El código introducido no concuerda con el que enviamos a su correo electrónico");
            }
        }

        private void SendNewCodeButtonClicked(object sender, RoutedEventArgs e)
        {

            TokenGeneratorClient tokenGeneratorClient =
                new TokenGeneratorClient();
            string newToken = tokenGeneratorClient.GenerateToken(6);

            AccessibilityServiceClient accesibilityServiceClient =
                new AccessibilityServiceClient();
            accesibilityServiceClient.AssignNewVerificationToken(_emailAddress, newToken);

            MailingServiceClient mailingServiceClient =
                new MailingServiceClient();
            mailingServiceClient.SendVerificationToken(_username, _emailAddress, newToken);

            MessageBox.Show("Nuevo código enviado");

        }

        private bool TokenIsCorrect()
        {
            AccessibilityServiceClient client =
                new AccessibilityServiceClient();
            return client.VerifyToken(_emailAddress, TextBoxToken.Text);
        }

        private void BackButtonClicked(object sender, RoutedEventArgs e)
        {
            Login loginView = new Login();
            loginView.Show();
            this.Close();
        }
    }
}
