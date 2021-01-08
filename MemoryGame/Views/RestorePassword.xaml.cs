using System.Windows;
using Utilities;
using MemoryGame.MemoryGameService;
using System.ServiceModel;
using System;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para RestorePassword.xaml
    /// </summary>
    public partial class RestorePassword : Window
    {
        private string _emailAddress;
        private string _username;
        private string _newPassword;
        private static readonly log4net.ILog _logger = log4net.LogManager.GetLogger("RestorePassword.xaml.cs");
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



        private void RestoreUserPassword()
        {
            bool tokenIsCorrect = TokenIsCorrect();
            if (tokenIsCorrect)
            {
                bool newPasswordWasSet = SetNewPassword();
                if (newPasswordWasSet)
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

        private bool TokenIsCorrect()
        {
            string token = TextBoxToken.Text;
            if (token == "")
            {
                return false;
            }
            AccountVerificationServiceClient accountVerificationServiceClient =
                new AccountVerificationServiceClient();
            return accountVerificationServiceClient.VerifyToken(_emailAddress, token);
        }

        public bool SetNewPassword()
        {
            IEncryption bCryptHashGenerator = new BCryptHashGenerator();
            string newPassword = NewPasswordBox.Password;
            if (newPassword == "")
            {
                return false;
            }
            string encryptedNewPassword = bCryptHashGenerator.GenerateEncryptedString(newPassword);
            AccountModifiabilityServiceClient accountModifiabilityServiceClient = new AccountModifiabilityServiceClient();
            bool newPasswordWasAssigned = accountModifiabilityServiceClient.SetNewPassword(_emailAddress, encryptedNewPassword);
            return newPasswordWasAssigned;
        }

        private void OkButtonClicked(object sender, RoutedEventArgs e)
        {
            try
            {
                RestoreUserPassword();
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show(Properties.Langs.Resources.ServerConnectionLost);
            }
            catch (FaultException<MemoryGameService.Faults.DatabaseConnectionLostFault>)
            {
                //MessageBox.Show(Properties.Langs.Resources.);
            }
            catch (FaultException<MemoryGameService.Faults.NonExistentUserFault>)
            {
                MessageBox.Show("El usuario no existe");
            }
            catch (TimeoutException timeoutException)
            {
                _logger.Fatal(timeoutException);
                MessageBox.Show(Properties.Langs.Resources.ServerTimeoutError);
            }
            catch (CommunicationException communicationException)
            {
                _logger.Fatal(communicationException);
                MessageBox.Show(Properties.Langs.Resources.CommunicationInterrupted);
            }
            /*
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
            */
        }

        private void SendNewCodeButtonClicked(object sender, RoutedEventArgs e)
        {
            try
            {
                SendNewCode();
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show(Properties.Langs.Resources.ServerConnectionLost);
            }
            catch (FaultException<MemoryGameService.Faults.DatabaseConnectionLostFault>)
            {
                //MessageBox.Show(Properties.Langs.Resources.);
            }
            catch (FaultException<MemoryGameService.Faults.NonExistentUserFault>)
            {
                MessageBox.Show("El usuario no existe");
            }
            catch (TimeoutException timeoutException)
            {
                _logger.Fatal(timeoutException);
                MessageBox.Show(Properties.Langs.Resources.ServerTimeoutError);
            }
            catch (CommunicationException communicationException)
            {
                _logger.Fatal(communicationException);
                MessageBox.Show(Properties.Langs.Resources.CommunicationInterrupted);
            }


        }

        private void SendNewCode()
        {
            TokenGeneratorClient tokenGeneratorClient =
                new TokenGeneratorClient();
            string newToken = tokenGeneratorClient.GenerateToken(6);
            bool newVerificationTokenWasAssigned = false;
            if(newToken != "")
            {
                AccountVerificationServiceClient accountVerificationServiceClient =
                    new AccountVerificationServiceClient();
                newVerificationTokenWasAssigned = accountVerificationServiceClient.AssignNewVerificationToken(_emailAddress, newToken);

                MailingServiceClient mailingServiceClient =
                    new MailingServiceClient();
                mailingServiceClient.SendVerificationToken(_username, _emailAddress, newToken);                
            }

            if (newVerificationTokenWasAssigned)
            {
                MessageBox.Show(Properties.Langs.Resources.NewCodeSentMessage);
            }                
        }



        private void BackButtonClicked(object sender, RoutedEventArgs e)
        {
            Login loginView = new Login();
            loginView.Show();
            this.Close();
        }
    }
}
