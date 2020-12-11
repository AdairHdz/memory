using DataAccess.Entities;
using MemoryGame.InputValidation;
using MemoryGame.InputValidation.RegistryValidation;
using System.Collections.Generic;
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

        public ChangeUsername()
        {
            InitializeComponent();
            Sesion userSession = Sesion.GetSesion;
            _userEmailAddress = userSession.EmailAddress;      
            LabelOldUsername.Content = GetOldUsername();
        }

        private void SetFormValidation()
        {
            _ruleSet = new RuleSet();
            _ruleSet.AddValidationRule(new UsernameValidationRule(_newUsername));
            _ruleSet.AddValidationRule(new UsernameAvailabilityValidationRule(_newUsername));
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

        private string GetOldUsername()
        {            
            MemoryGameService.AccessibilityServiceClient accesibilityServiceClient =
                new MemoryGameService.AccessibilityServiceClient();
            return accesibilityServiceClient.GetUsername(_userEmailAddress);            
        }

        private void SaveChangesButtonClicked(object sender, RoutedEventArgs e)
        {
            
            _newUsername = TextBoxNewUsername.Text;
            SetFormValidation();
            if (_ruleSet.AllValidationRulesHavePassed())
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

            MemoryGameService.DataTransferObjects.PlayerCredentialsDTO playerCredentialsDTO =
                new MemoryGameService.DataTransferObjects.PlayerCredentialsDTO()
                {
                    Username = _newUsername,
                    EmailAddress = _userEmailAddress
                };

            return accountModifiabilityServiceClient.ChangeUsername(playerCredentialsDTO);            
        }

        private void GoToMainWindow()
        {
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
            this.Close();
        }
    }
}