using DataAccess.Entities;
using MemoryGame.InputValidation;
using MemoryGame.InputValidation.RegistryValidation;
using MemoryGame.MemoryGameService;
using System;
using System.Collections.Generic;
using System.ServiceModel;
using System.Windows;

namespace MemoryGame
{
    /// <summary>
    /// Interaction logic for ChangeUsername.xaml
    /// </summary>
    public partial class ChangeUsername : Window
    {
        private string _userEmailAddress;
        private string _newUsername;
        private string _oldUsername;
        private RuleSet _ruleSet;

        /// <summary>
        /// The <c>ChangeUsername</c> class constructor.
        /// </summary>
        public ChangeUsername()
        {
            InitializeComponent();
            Sesion userSession = Sesion.GetSesion;
            _userEmailAddress = userSession.EmailAddress;
            _oldUsername = userSession.Username;
            OldUsernameLabel.Content = _oldUsername;
        }

        private void SetFormValidation()
        {
            _ruleSet = new RuleSet();
            _ruleSet.AddValidationRule(new UsernameValidationRule(_newUsername));
        }

        private void NewUsernameTextBoxLostFocus(object sender, RoutedEventArgs routedEventArgs)
        {
            if (string.IsNullOrEmpty(TextBoxNewUsername.Text))
            {
                TextBoxNewUsername.Visibility = Visibility.Collapsed;
                waterMarkText.Visibility = Visibility.Visible;
            }
        }

        private void NewUsernameTextBoxGotFocus(object sender, RoutedEventArgs e)
        {
            waterMarkText.Visibility = Visibility.Collapsed;
            TextBoxNewUsername.Visibility = Visibility.Visible;
            TextBoxNewUsername.Focus();
        }

        private bool UsernameIsAvailable()
        {
            PlayerRegistryServiceClient playerRegistryServiceClient = new PlayerRegistryServiceClient();
            bool usernameIsAvailable = playerRegistryServiceClient.UserNameIsAvailable(_newUsername);
            return usernameIsAvailable;
        }

        private void SaveChangesButtonClicked(object sender, RoutedEventArgs routedEventArgs)
        {            
            _newUsername = TextBoxNewUsername.Text;
            SetFormValidation();
            if (_ruleSet.AllValidationRulesHavePassed())
            {
                try
                {
                    SetNewUsername();

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
            else
            {
                ShowErrorMessage();
            }           
        }

        private void SetNewUsername()
        {
            if (_oldUsername.Equals(_newUsername))
            {
                MessageBox.Show(Properties.Langs.Resources.NewUsernameIsIdenticalToTheOldOne);
            }
            else
            {
                if (UsernameIsAvailable())
                {
                    if (UserNameWasChangedSuccessfully())
                    {
                        MessageBox.Show(Properties.Langs.Resources.UsernameUpdatedSuccessfully);
                        GoToMainWindow();
                    }
                    else
                    {
                        MessageBox.Show(Properties.Langs.Resources.UsernameUpdatedError);
                    }
                }
                else
                {
                    MessageBox.Show(Properties.Langs.Resources.UsernameIsTaken);
                }
            }

        }

        private void ShowErrorMessage()
        {
            IList<ValidationRuleResult> validationResultErrors = _ruleSet.GetValidationResultErrors();            
            if(validationResultErrors.Count > 0)
            {
                MessageBox.Show(validationResultErrors[0].Message);
            }
        }

        private bool UserNameWasChangedSuccessfully()
        {
            AccountModifiabilityServiceClient accountModifiabilityServiceClient =
                new AccountModifiabilityServiceClient();

            return accountModifiabilityServiceClient.ChangeUsername(_userEmailAddress, _newUsername);            
        }

        private void GoToMainWindow()
        {
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
            this.Close();
        }

        private void BackButtonClicked(object sender, RoutedEventArgs e)
        {
            GoToMainWindow();
        }
    }
}