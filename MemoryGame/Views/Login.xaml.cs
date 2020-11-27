using MemoryGame.MemoryGameService;
using System.Windows;
using Utilities;
using DataAccess.Entities;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para Login.xaml
    /// </summary>
    public partial class Login : Window
    {
        public Login()
        {
            InitializeComponent();
        }

        public bool LoginIsValid()
        {
            AccessibilityServiceClient client = new AccessibilityServiceClient();

            string encryptedPassword = MD5Encryption.Encrypt(PasswordBoxPassword.Password);
            string username = TextBoxUsername.Text;

            return client.HasAccessRights(username, encryptedPassword);
        }

        public bool EmailIsVerified()
        {
            AccessibilityServiceClient client = new AccessibilityServiceClient();

            string username = TextBoxUsername.Text;

            return client.IsVerified(username);
        }


        public void GoToMainMenu()
        {
            MainMenu mainMenuView = new MainMenu();
            mainMenuView.Show();
            this.Close();
        }

        public string GetUserEmailAdress()
        {
            AccessibilityServiceClient client = new AccessibilityServiceClient();

            string username = TextBoxUsername.Text;

            return client.GetUserEmailAddress(username);
        }

        private void LoginButtonClicked(object sender, RoutedEventArgs e)
        {
            if (LoginIsValid())
            {
                if (EmailIsVerified())
                {
                    Sesion playerSesion = Sesion.GetSesion;
                    playerSesion.Username = TextBoxUsername.Text;
                    playerSesion.EmailAddress = GetUserEmailAdress();
                    ChangeUsername changeUserNameWindow = new ChangeUsername();
                    changeUserNameWindow.Show();
                    this.Close();
                    //GoToMainMenu();
                }
                else
                {
                    ActivationToken activationTokenWindow =
                            new ActivationToken(GetUserEmailAdress(), TextBoxUsername.Text);

                    activationTokenWindow.Show();
                    this.Close();
                }
            }
            else
            {
                MessageBox.Show("No existe el usuario (a esto hay que volverlo un resource)");
            }
        }

        private void BackButtonClicked(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindowView = new MainWindow();
            mainWindowView.Show();
            this.Close();
        }

        private void RecoverPasswordLabelClicked(object sender, RoutedEventArgs e)
        {
            RecoverPassword mainWindowView = new RecoverPassword();
            mainWindowView.Show();
            this.Close();
        }
    }
}