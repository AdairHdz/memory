using System.Windows;
using MemoryGame.MemoryGameService;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para RecoverPassword.xaml
    /// </summary>
    public partial class RecoverPassword : Window
    {
        private string _verificationToken;
        public RecoverPassword()
        {
            InitializeComponent();
        }

        private void CancelButtonClicked(object sender, RoutedEventArgs e)
        {
            Login loginView = new Login();
            loginView.Show();
            this.Close();
        }

        private bool EmailIsRegistered()
        {
            AccessibilityServiceClient client = new AccessibilityServiceClient();

            string emailAddress = TextBoxEmail.Text;

            return client.ItsRegistered(emailAddress);
        }

        private string GetUsername()
        {
            AccessibilityServiceClient client = new AccessibilityServiceClient();

            string emailAddress = TextBoxEmail.Text;

            return client.GetUsername(emailAddress);
        }

        private void GenerateVerificationToken()
        {
            TokenGeneratorClient client = new TokenGeneratorClient();
            _verificationToken = client.GenerateToken(6);
        }

        private void SendVerificationCode()
        {
            MailingServiceClient client =
                new MailingServiceClient();
            client.SendVerificationToken(GetUsername(), TextBoxEmail.Text, _verificationToken);

            AccountVerificationServiceClient accountVerificationServiceClient =
                new AccountVerificationServiceClient();
            accountVerificationServiceClient.AssignNewVerificationToken(TextBoxEmail.Text, _verificationToken);
        }

        private void SendCodeButtonClicked(object sender, RoutedEventArgs e)
        {
            if (EmailIsRegistered())
            {
                GenerateVerificationToken();
                SendVerificationCode();
                RestorePassword restorePasswordWindow =
                    new RestorePassword(TextBoxEmail.Text, GetUsername());
                restorePasswordWindow.Show();
                this.Close();
            }
            else
            {
                MessageBox.Show(Properties.Langs.Resources.NonRegisteredEmail);
            }

        }

    }
}
