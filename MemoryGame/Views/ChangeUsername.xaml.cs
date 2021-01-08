using DataAccess.Entities;
using MemoryGame.InputValidation;
using MemoryGame.InputValidation.RegistryValidation;
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
        private RuleSet _ruleSet;
        private static readonly log4net.ILog _logger = log4net.LogManager.GetLogger("ChangeUsername.xaml.cs");
        public ChangeUsername()
        {
            InitializeComponent();
            Sesion userSession = Sesion.GetSesion;
            _userEmailAddress = userSession.EmailAddress;      
            LoadOldUsername();
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



        private void LoadOldUsername()
        {
            try
            {
                MemoryGameService.AccessibilityServiceClient accesibilityServiceClient =
                    new MemoryGameService.AccessibilityServiceClient();
                LabelOldUsername.Content = accesibilityServiceClient.GetUsername(_userEmailAddress);
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

        private void SaveChangesButtonClicked(object sender, RoutedEventArgs e)
        {            
            _newUsername = TextBoxNewUsername.Text;
            SetFormValidation();
            if (_ruleSet.AllValidationRulesHavePassed())
            {
                try
                {

                    if (ChangeUserName())
                    {
                        MessageBox.Show(Properties.Langs.Resources.UsernameUpdatedSuccessfully);
                        GoToMainWindow();
                    }
                    else
                    {
                        MessageBox.Show(Properties.Langs.Resources.UsernameUpdatedError);
                    }
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

        private bool ChangeUserName()
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