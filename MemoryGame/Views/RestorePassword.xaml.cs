using System.Windows;
using Utilities;
using MemoryGame.MemoryGameService;
using System.ServiceModel;
using System;
using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGame.Utilities;
using MemoryGame.InputValidation;
using MemoryGame.InputValidation.RegistryValidation;
using System.Collections.Generic;

namespace MemoryGame
{
    /// <summary>
    /// Interaction logic for RestorePassword.xaml
    /// </summary>
    public partial class RestorePassword : Window
    {
        private string _emailAddress;
        private string _username;
        private RuleSet _ruleSet;
        private string _newPassword;
        
        /// <summary>
        /// The <c>RestorePassword</c> constructor.
        /// </summary>
        public RestorePassword()
        {
            InitializeComponent();
        }

        /// <summary>
        /// The <c>RestorePassword</c> constructor.
        /// </summary>
        /// <param name="emailAddress">The email address of the player who wants to restore its password.</param>
        /// <param name="username">The username of the player who wants to restore its password.</param>
        public RestorePassword(string emailAddress, string username)
        {
            InitializeComponent();
            _emailAddress = emailAddress;
            _username = username;
        }

        private void SetFormValidation()
        {
            _ruleSet = new RuleSet();
            _ruleSet.AddValidationRule(new PasswordValidationRule(_newPassword));
        }

        private void RestoreUserPassword()
        {
            _newPassword = NewPasswordBox.Password;
            SetFormValidation();
            if (_ruleSet.AllValidationRulesHavePassed())
            {
                if (TokenIsCorrect())
                {
                    if (SetNewPassword())
                    {
                        MessageBox.Show(Properties.Langs.Resources.PasswordReset);
                        GoToLogin();
                    }
                    else
                    {
                        MessageBox.Show(Properties.Langs.Resources.PasswordRecoveryError);
                    }
                }
                else
                {
                    MessageBox.Show(Properties.Langs.Resources.NonMatchingVerificationCode);
                }
            }
            else
            {
                ShowErrorMessage();
            }
        }


        private void ShowErrorMessage()
        {
            IList<ValidationRuleResult> validationResultErrors = _ruleSet.GetValidationResultErrors();
            if (validationResultErrors.Count > 0)
            {
                MessageBox.Show(validationResultErrors[0].Message);
            }
        }

        private bool TokenIsCorrect()
        {
            string token = TokenTextBox.Text;
            if (token == "")
            {
                return false;
            }
            AccountVerificationServiceClient accountVerificationServiceClient =
                new AccountVerificationServiceClient();
            return accountVerificationServiceClient.VerifyRecoveryToken(_emailAddress, token);
        }

        private bool SetNewPassword()
        {
            IEncryption bCryptHashGenerator = new BCryptHashGenerator();
            string newPassword = NewPasswordBox.Password;
            if (newPassword == "")
            {
                return false;
            }
            string salt = bCryptHashGenerator.GenerateSalt();
            string encryptedNewPassword = bCryptHashGenerator.GenerateEncryptedString(newPassword, salt);
            AccountModifiabilityServiceClient accountModifiabilityServiceClient = new AccountModifiabilityServiceClient();
            PasswordModificationCredentialsDto passwordModificationCredentials = new PasswordModificationCredentialsDto()
            {
                EmailAddress = _emailAddress,
                Salt = salt,
                NewPassword = encryptedNewPassword
            };
            bool newPasswordWasAssigned = accountModifiabilityServiceClient.SetNewPassword(passwordModificationCredentials);
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
            catch (TimeoutException)
            {
                MessageBox.Show(Properties.Langs.Resources.ServerTimeoutError);
            }
            catch (CommunicationException)
            {
                MessageBox.Show(Properties.Langs.Resources.CommunicationInterrupted);
            }
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
            catch (TimeoutException)
            {
                MessageBox.Show(Properties.Langs.Resources.ServerTimeoutError);
            }
            catch (CommunicationException)
            {
                MessageBox.Show(Properties.Langs.Resources.CommunicationInterrupted);
            }


        }

        private void SendNewCode()
        {            
            string newToken = TokenManager.GenerateToken();            
            bool newVerificationTokenWasAssigned = false;
            if(newToken != "")
            {
                AccountVerificationServiceClient accountVerificationServiceClient =
                    new AccountVerificationServiceClient();
                newVerificationTokenWasAssigned = accountVerificationServiceClient.AssignNewRecoveryToken(_emailAddress, newToken);
            }

            if (newVerificationTokenWasAssigned)
            {
                TokenInfoDto verificationTokenInfo = new TokenInfoDto()
                {
                    Name = _username,
                    EmailAddress = _emailAddress,
                    Token = newToken
                };
                TokenManager.SendToken(verificationTokenInfo);
                MessageBox.Show(Properties.Langs.Resources.NewCodeSentMessage);
            }                
        }

        private void BackButtonClicked(object sender, RoutedEventArgs e)
        {
            GoToLogin();
        }

        private void GoToLogin()
        {
            Login loginView = new Login();
            loginView.Show();
            this.Close();
        }
    }
}
