using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGame.Utilities;
using System;
using System.ServiceModel;
using System.Windows;

namespace MemoryGame
{
    /// <summary>
    /// Interaction logic for ActivationToken.xaml
    /// </summary>
    public partial class ActivationToken : Window
    {
        private string _emailAddress;
        private string _username;
        private string _newToken;
        private MemoryGameService.AccountVerificationServiceClient _accountVerificationServiceClient;

        /// <summary>
        /// The <c>ActivationToken</c> constructor.
        /// </summary>
        /// <param name="emailAddress">The email address of the user to whom the token will be sent</param>
        /// <param name="username">The username of the user to whom the token will be sent</param>
        public ActivationToken(string emailAddress, string username)
        {
            InitializeComponent();
            _accountVerificationServiceClient = new MemoryGameService.AccountVerificationServiceClient();
            _emailAddress = emailAddress;
            _username = username;
        }

        private void OkButtonClicked(object sender, RoutedEventArgs e)
        {
            try
            {
                VerifyAccount();
            }
            catch (TimeoutException)
            {
                MessageBox.Show(Properties.Langs.Resources.ServerTimeoutError);
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show(Properties.Langs.Resources.ServerConnectionLost);
            }
            catch (CommunicationException)
            {
                MessageBox.Show(Properties.Langs.Resources.CommunicationInterrupted);
            }
        }

        private void VerifyAccount()
        {
            if (TokenIsCorrect())
            {
                if (AccountWasSuccessfullyVerified())
                {
                    MessageBox.Show(Properties.Langs.Resources.AccountVerificationSuccess);

                    GoToLogin();
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

        private void GoToLogin()
        {
            Login loginView = new Login();
            loginView.Show();
            this.Close();
        }

        private bool TokenIsCorrect()
        {
            string token = TextBoxToken.Text;
            if (token == "")
            {
                return false;
            }            
            return _accountVerificationServiceClient.VerifyActivationToken(_emailAddress, token);
        }

        private bool AccountWasSuccessfullyVerified()
        {
            return _accountVerificationServiceClient.SetAccountAsVerified(_emailAddress);
        }

        private void SendNewCodeButtonClicked(object sender, RoutedEventArgs e)
        {
            try
            {
                GenerateNewToken();
                
                if (AssignNewVerificationToken())
                {
                    SendNewVerificationToken();
                    MessageBox.Show(Properties.Langs.Resources.NewCodeSentMessage);
                }
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show(Properties.Langs.Resources.ServerConnectionLost);
            }
            catch (TimeoutException)
            {
                MessageBox.Show(Properties.Langs.Resources.ServerTimeoutError);
            }
            catch (CommunicationObjectFaultedException)
            {
                MessageBox.Show(Properties.Langs.Resources.CommunicationInterrupted);
            }
        }

        private void GenerateNewToken()
        {
            string newToken = TokenManager.GenerateToken();
            _newToken = newToken;
        }

        private bool AssignNewVerificationToken()
        {
            bool newVerificationTokenWasAssignedSuccessfully =
                _accountVerificationServiceClient.AssignNewActivationToken(_emailAddress, _newToken);

            return newVerificationTokenWasAssignedSuccessfully;
        }

        private void SendNewVerificationToken()
        {
            TokenInfoDto verificationTokenInfo = new TokenInfoDto()
            {
                Name = _username,
                EmailAddress = _emailAddress,
                Token = _newToken,
                Subject = Properties.Langs.Resources.Welcome,
                Body = Properties.Langs.Resources.VerificationToken
            };

            TokenManager.SendToken(verificationTokenInfo);            
        }

        private void BackButtonClicked(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindowView = new MainWindow();
            mainWindowView.Show();
            this.Close();
        }
    }
}
