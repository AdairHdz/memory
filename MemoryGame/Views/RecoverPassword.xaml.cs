using System;
using System.Collections.Generic;
using System.ServiceModel;
using System.Windows;
using MemoryGame.InputValidation;
using MemoryGame.InputValidation.RegistryValidation;
using MemoryGame.MemoryGameService;
using MemoryGame.Utilities;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para RecoverPassword.xaml
    /// </summary>
    public partial class RecoverPassword : Window
    {
        private string _verificationToken;
        private RuleSet _ruleSet;
        private string _emailAddress;
        private string _username;
        private static readonly log4net.ILog _logger = log4net.LogManager.GetLogger("RecoverPassword.xaml.cs");
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
            List<ValidationRuleResult> validationResultErrors = _ruleSet.GetValidationResultErrors();
            foreach (ValidationRuleResult validationRuleResult
                in validationResultErrors)
            {
                MessageBox.Show(validationRuleResult.Message);
                return;
            }
        }

        private void CancelButtonClicked(object sender, RoutedEventArgs e)
        {
            Login loginView = new Login();
            loginView.Show();
            this.Close();
        }



        private void LoadUsername()
        {
            AccessibilityServiceClient client = new AccessibilityServiceClient();
            _username = client.GetUsername(_emailAddress);
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
                    bool newVerificationTokenWasAssigned = AssignNewVerificationToken();
                    SendVerificationCode();
                    if (newVerificationTokenWasAssigned)
                    {
                        GoToRestorePassword();
                    }
                    else
                    {
                        MessageBox.Show("No se asignó el token");
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
            _verificationToken = TokenManager.GenerateVerificationToken();
        }

        private bool AssignNewVerificationToken()
        {
            AccountVerificationServiceClient accountVerificationServiceClient =
                new AccountVerificationServiceClient();
            return accountVerificationServiceClient.AssignNewVerificationToken(_emailAddress, _verificationToken);
        }

        private void SendVerificationCode()
        {            
            TokenManager.SendVerificationToken(_username, _emailAddress, _verificationToken);
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
