using System;
using System.Collections.Generic;
using System.ServiceModel;
using System.Windows;
using MemoryGame.InputValidation;
using MemoryGame.InputValidation.RegistryValidation;
using MemoryGame.MemoryGameService;
using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGame.Utilities;

namespace MemoryGame
{
    /// <summary>
    /// Interaction logic for RecoverPassword.xaml
    /// </summary>
    public partial class RecoverPassword : Window
    {
        private string _verificationToken;
        private RuleSet _ruleSet;
        private string _emailAddress;
        private string _username;
        private static readonly log4net.ILog _logger = log4net.LogManager.GetLogger("RecoverPassword.xaml.cs");
        
        /// <summary>
        /// The <c>RecoverPassword</c> constructor.
        /// </summary>
        public RecoverPassword()
        {
            InitializeComponent();
        }

        private void SetFormValidation()
        {
            _ruleSet = new RuleSet();
            _ruleSet.AddValidationRule(new EmailAddressValidationRule(_emailAddress));
        }

        private void ShowErrorMessage()
        {
            IList<ValidationRuleResult> validationResultErrors = _ruleSet.GetValidationResultErrors();
            if (validationResultErrors.Count > 0)
            {
                MessageBox.Show(validationResultErrors[0].Message);
            }
        }

        private void CancelButtonClicked(object sender, RoutedEventArgs e)
        {
            Login loginView = new Login();
            loginView.Show();
            this.Close();
        }

        private void SendCodeButtonClicked(object sender, RoutedEventArgs e)
        {
            try
            {
                SendCodeToUser();
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show(Properties.Langs.Resources.ServerConnectionLost);
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

        private void SendCodeToUser()
        {
            _emailAddress = TextBoxEmail.Text;
            SetFormValidation();
            if (_ruleSet.AllValidationRulesHavePassed())
            {
                if (EmailIsRegistered())
                {
                    LoadUsername();
                    GenerateVerificationToken();
                    bool newVerificationTokenWasAssigned = AssignNewRecoveryToken();                    
                    if (newVerificationTokenWasAssigned)
                    {
                        SendRecoveryToken();
                        MessageBox.Show(Properties.Langs.Resources.PasswordRecoveryTokenSent);
                        GoToRestorePassword();
                    }
                    else
                    {
                        MessageBox.Show(Properties.Langs.Resources.RecoveryTokenSendingError);
                    }                    
                }
                else
                {
                    MessageBox.Show(Properties.Langs.Resources.NonRegisteredEmail);
                }
            }
            else
            {
                ShowErrorMessage();
            }
        }

        private bool EmailIsRegistered()
        {
            AccessibilityServiceClient client = new AccessibilityServiceClient();
            return client.ItsRegistered(_emailAddress);
        }

        private void GenerateVerificationToken()
        {
            _verificationToken = TokenManager.GenerateToken();
        }

        private bool AssignNewRecoveryToken()
        {
            AccountVerificationServiceClient accountVerificationServiceClient =
                new AccountVerificationServiceClient();
            return accountVerificationServiceClient.AssignNewRecoveryToken(_emailAddress, _verificationToken);
        }

        private void SendRecoveryToken()
        {
            TokenInfoDto recoveryToken = new TokenInfoDto()
            {
                Name = _username,
                EmailAddress = _emailAddress,
                Token = _verificationToken,
                Subject = Properties.Langs.Resources.PasswordRecovery,
                Body = Properties.Langs.Resources.RecoveryToken
            };
            TokenManager.SendToken(recoveryToken);
        }


        private void LoadUsername()
        {
            AccessibilityServiceClient client = new AccessibilityServiceClient();
            _username = client.GetUsername(_emailAddress);
        }


        private void GoToRestorePassword()
        {
            RestorePassword restorePasswordWindow =
                new RestorePassword(_emailAddress, _username);
            restorePasswordWindow.Show();
            this.Close();
        }

    }
}
