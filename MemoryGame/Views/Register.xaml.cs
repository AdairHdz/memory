using MemoryGame.MemoryGameService;
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

        private string _verificationToken;        
        public Register()
        {            
            InitializeComponent();
        }

        private bool EmailAddressIsAvailable()
        {
            AccessibilityServiceClient client = new AccessibilityServiceClient();
            bool emailAddressIsAvailable = 
                client.EmailAddressIsAvailable(TextBoxEmail.Text);
            //return emailAddressIsAvailable;
            return true;
        }

        private bool UsernameIsAvailable()
        {
            AccessibilityServiceClient client = new AccessibilityServiceClient();
            bool usernameIsAvailable = client.UserNameIsAvailable(TextBoxUsername.Text);
            //return usernameIsAvailable;
            return true;
        }

        private void RegisterButtonClicked(object sender, RoutedEventArgs e)
        {
            
            
            if (EmailAddressIsAvailable())
            {
                if (UsernameIsAvailable())
                {
                    GenerateVerificationToken();
                    if (PlayerWasSuccessfullyRegistered())
                    {
                        SendVerificationCode();
                        ActivationToken activationTokenWindow =
                            new ActivationToken(TextBoxEmail.Text, TextBoxUsername.Text);                        
                        activationTokenWindow.Show();
                    }
                    else
                    {
                        MessageBox.Show("Error en el registro");
                    }
                }
                else
                {
                    MessageBox.Show("El nombre de usuario proporcionado ya se encuentra ocupado");
                }
                
            }
            else
            {
                MessageBox.Show("El email proporcionado ya se encuentra ocupado");
            }
            
        }

        private bool PlayerWasSuccessfullyRegistered()
        {
            string email = TextBoxEmail.Text;
            string username = TextBoxUsername.Text;
            string password = MD5Encryption.Encrypt(PasswordBoxPassword.Password);
            MemoryGameService.AccessibilityServiceClient client =
                new MemoryGameService.AccessibilityServiceClient();            
            return client.RegisterNewPlayer(email, username, password, _verificationToken);
        }

        private void CancelButtonClicked(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindowView = new MainWindow();
            mainWindowView.Show();
            this.Close();
        }

        private void GenerateVerificationToken()
        {
            MemoryGameService.TokenGeneratorClient client =
                new MemoryGameService.TokenGeneratorClient();
            _verificationToken = client.GenerateToken(6);
        }

        private void SendVerificationCode()
        {
            MemoryGameService.MailingServiceClient client = 
                new MemoryGameService.MailingServiceClient();
            client.SendVerificationToken(TextBoxUsername.Text, TextBoxEmail.Text, _verificationToken);
        }

        

    }
}
