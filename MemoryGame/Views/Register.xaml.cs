using System;
using System.Security;
using System.Security.Cryptography;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using Utilities;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para Register.xaml
    /// </summary>
    public partial class Register : Window
    {
        public Register()
        {            
            InitializeComponent();

        }

        private void RegisterButtonClicked(object sender, RoutedEventArgs e)
        {

            if (RegisterPlayer())
            {
                SendRegistrationCode();
                MessageBox.Show("Jugador registrado");
            }
            else
            {
                MessageBox.Show("Jugador NO registrado");
            }
        }

        private bool RegisterPlayer()
        {
            string email = TextBoxEmail.Text;
            string username = TextBoxUsername.Text;
            string password = MD5Encryption.Encrypt(PasswordBoxPassword.Password);
            MemoryGameService.AccessibilityServiceClient client =
                new MemoryGameService.AccessibilityServiceClient();
            return client.RegisterNewPlayer(email, username, password);
        }

        private void CancelButtonClicked(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindowView = new MainWindow();
            mainWindowView.Show();
            this.Close();
        }

        private void SendRegistrationCode()
        {
            MemoryGameService.MailingServiceClient client = 
                new MemoryGameService.MailingServiceClient();
            client.SendCode(TextBoxUsername.Text, TextBoxEmail.Text);
        }

    }
}
