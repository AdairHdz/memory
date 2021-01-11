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
    /// Lógica de interacción para ChangeUsername.xaml
    /// </summary>
    public partial class ChangeUsername : Window
    {
        private string _userEmailAddress;
        private string _newUsername;
        private string _oldUsername;
        private RuleSet _ruleSet;
        private static readonly log4net.ILog _logger = log4net.LogManager.GetLogger("ChangeUsername.xaml.cs");
        public ChangeUsername()
        {
            InitializeComponent();
            Sesion userSession = Sesion.GetSesion;
            _userEmailAddress = userSession.EmailAddress;
            _oldUsername = userSession.Username;
            LabelOldUsername.Content = _oldUsername;
        }

        private void SetFormValidation()
        {
            _ruleSet = new RuleSet();
            _ruleSet.AddValidationRule(new UsernameValidationRule(_newUsername));
        }

        private void TextBoxNewUsername_LostFocus(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(TextBoxNewUsername.Text))
            {
                TextBoxNewUsername.Visibility = System.Windows.Visibility.Collapsed;
                waterMarkText.Visibility = System.Windows.Visibility.Visible;
            }
        }

        private void waterMarkText_GotFocus(object sender, RoutedEventArgs e)
        {
            waterMarkText.Visibility = System.Windows.Visibility.Collapsed;
            TextBoxNewUsername.Visibility = System.Windows.Visibility.Visible;
            TextBoxNewUsername.Focus();
        }

        private bool UsernameIsAvailable()
        {
            PlayerRegistryServiceClient playerRegistryServiceClient = new PlayerRegistryServiceClient();
            bool usernameIsAvailable = playerRegistryServiceClient.UserNameIsAvailable(_newUsername);
            return usernameIsAvailable;
        }

        private void SaveChangesButtonClicked(object sender, RoutedEventArgs e)
        {            
            _newUsername = TextBoxNewUsername.Text;
            SetFormValidation();
            if (_ruleSet.AllValidationRulesHavePassed())
            {
                try
                {
                    SetNewUsername();

                }
                catch (TimeoutException timeoutException)
                {
                    _logger.Fatal(timeoutException);
                    MessageBox.Show(Properties.Langs.Resources.ServerTimeoutError);
                }
                catch (EndpointNotFoundException endpointNotFoundException)
                {
                    _logger.Fatal(endpointNotFoundException);
                    MessageBox.Show(Properties.Langs.Resources.ServerConnectionLost);
                }
                catch (CommunicationException communicationException)
                {
                    _logger.Fatal(communicationException);
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
            MemoryGameService.AccountModifiabilityServiceClient accountModifiabilityServiceClient =
                new MemoryGameService.AccountModifiabilityServiceClient();

            return accountModifiabilityServiceClient.ChangeUsername(_userEmailAddress, _newUsername);            
        }

        private void GoToMainWindow()
        {
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
            this.Close();
        }
    }
}