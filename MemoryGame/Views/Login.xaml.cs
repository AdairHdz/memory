using MemoryGame.MemoryGameService;
using System.Windows;
using Utilities;
using DataAccess.Entities;
using MemoryGame.InputValidation;
using MemoryGame.InputValidation.GenericValidations;
using System.Collections.Generic;
using System.ServiceModel;
using System;

namespace MemoryGame
{
    /// <summary>
    /// Interaction logic for Login.xaml
    /// </summary>
    public partial class Login : Window
    {
        private RuleSet _ruleSet;
        private string _username, _password;
        private AccessibilityServiceClient _accessibilityServiceClient;
        
        /// <summary>
        /// The <c>Login</c> constructor.
        /// </summary>
        public Login()
        {            
            InitializeComponent();
            _accessibilityServiceClient = new AccessibilityServiceClient();
        }

        private void GetDataFromFields()
        {
            _username = TextBoxUsername.Text;
            _password = PasswordBoxPassword.Password;
        }

        private void SetFormValidation()
        {
            GetDataFromFields();
            _ruleSet = new RuleSet();
            _ruleSet.AddValidationRule(new NonEmptyFieldValidation(_username));
            _ruleSet.AddValidationRule(new NonEmptyFieldValidation(_password));
        }

        private void ShowErrorMessage()
        {
            IList<ValidationRuleResult> validationResultErrors = _ruleSet.GetValidationResultErrors();
            if (validationResultErrors.Count > 0)
            {
                MessageBox.Show(validationResultErrors[0].Message);
            }
        }

        private void LoginButtonClicked(object sender, RoutedEventArgs e)
        {
            SetFormValidation();
            if (_ruleSet.AllValidationRulesHavePassed())
            {
                try
                {
                    LoginUser();
                }
                catch (FaultException<MemoryGameService.Faults.NonExistentUserFault>)
                {                    
                    MessageBox.Show(Properties.Langs.Resources.UserDoesNotExist);
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
            else
            {
                ShowErrorMessage();
            }
        }

        private string GetUserEmailAdress()
        {                      
            string username = TextBoxUsername.Text;
            string emailAddress = _accessibilityServiceClient.GetUserEmailAddress(username);
            return emailAddress;
        }

        private void LoginUser()
        {
            if (LoginIsValid())
            {
                if (EmailIsVerified())
                {
                    string emailAddress = GetUserEmailAdress();
                    Sesion playerSesion = Sesion.GetSesion;
                    playerSesion.Username = _username;
                    playerSesion.EmailAddress = emailAddress;
                    GoToMainMenu();
                }
                else
                {
                    GoToActivationToken();
                }
            }
            else
            {
                MessageBox.Show(Properties.Langs.Resources.NonMatchingCredentials);
            }
        }

        private bool LoginIsValid()
        {
            BCryptHashGenerator bCryptHashGenerator = new BCryptHashGenerator();
            string salt = GetPasswordSalt();
            string encryptedPassword = bCryptHashGenerator.GenerateEncryptedString(_password, salt);            
            bool hasAccessRights = _accessibilityServiceClient.HasAccessRights(_username, encryptedPassword);
            return hasAccessRights;
        }

        private string GetPasswordSalt()
        {
            string salt = _accessibilityServiceClient.GetSalt(_username);
            return salt;
        }

        private bool EmailIsVerified()
        {
            string username = TextBoxUsername.Text;
            bool emailIsVerified = _accessibilityServiceClient.IsVerified(username);
            return emailIsVerified;
        }

        private void GoToMainMenu()
        {
            MainMenu mainMenuView = new MainMenu();
            mainMenuView.Show();
            this.Close();
        }

        private void RecoverPasswordLabelClicked(object sender, RoutedEventArgs e)
        {
            RecoverPassword mainWindowView = new RecoverPassword();
            mainWindowView.Show();
            this.Close();
        }

        private void BackButtonClicked(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindowView = new MainWindow();
            mainWindowView.Show();
            this.Close();
        }

        private void GoToActivationToken()
        {
            string emailAddress = GetUserEmailAdress();
            ActivationToken activationTokenWindow = new ActivationToken(emailAddress, TextBoxUsername.Text);
            activationTokenWindow.Show();
            this.Close();
        }
    }
}