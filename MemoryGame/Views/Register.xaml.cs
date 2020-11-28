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
    /// 

    public partial class Register : Window
    {
        private string _emailAddress;
        private string _username;
        private string _password;
        private string _encryptedPassword;
        private string _verificationToken;
        private MemoryGameService.PlayerRegistryServiceClient _playerRegistryServiceClient;
        public Register()
        {            
            InitializeComponent();
            _playerRegistryServiceClient = new MemoryGameService.PlayerRegistryServiceClient();
        }

        private bool EmailAddressIsAvailable()
        {            
            bool emailAddressIsAvailable =
                _playerRegistryServiceClient.EmailAddressIsAvailable(_emailAddress);
            //return emailAddressIsAvailable;
            return true;
        }

        private bool UsernameIsAvailable()
        {            
            bool usernameIsAvailable = _playerRegistryServiceClient.UserNameIsAvailable(_username);
            //return usernameIsAvailable;
            return true;
        }

        private void RegisterButtonClicked(object sender, RoutedEventArgs e)
        {

            _emailAddress = TextBoxEmail.Text;
            _username = TextBoxUsername.Text;
            _password = PasswordBoxPassword.Password;

            if (isValidData())
            {
                _encryptedPassword = MD5Encryption.Encrypt(_password);
                if (EmailAddressIsAvailable())
                {
                    if (UsernameIsAvailable())
                    {
                        GenerateVerificationToken();
                        if (PlayerWasSuccessfullyRegistered())
                        {
                            SendVerificationCode();
                            ActivationToken activationTokenWindow =
                                new ActivationToken(_emailAddress, _username);
                            activationTokenWindow.Show();
                            this.Close();
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
            else
            {
                MessageBox.Show("Datos no válidos");
            }
            
        }

        private bool PlayerWasSuccessfullyRegistered()
        {                                  
            return _playerRegistryServiceClient.RegisterNewPlayer(_emailAddress, _username, _encryptedPassword, _verificationToken);
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
            client.SendVerificationToken(_username, _emailAddress, _verificationToken);
        }

        private bool isValidData()
        {                        
            MemoryGameService.DataValidationServiceClient client =
                new MemoryGameService.DataValidationServiceClient();
            return client.ValidateRegisterForm(_emailAddress, _username, _password);
        }

    }
}
