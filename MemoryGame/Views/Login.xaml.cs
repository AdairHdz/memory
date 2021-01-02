using MemoryGame.MemoryGameService;
using System.Windows;
using Utilities;
using DataAccess.Entities;
using MemoryGame.InputValidation;
using MemoryGame.InputValidation.GenericValidations;
using System.Collections.Generic;
using MemoryGame.MemoryGameService.DataTransferObjects;
using System.ServiceModel;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para Login.xaml
    /// </summary>
    public partial class Login : Window
    {
        private RuleSet _ruleSet;
        private string _username, _password;
        
        public Login()
        {            
            InitializeComponent();
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
            List<ValidationRuleResult> validationResultErrors = _ruleSet.GetValidationResultErrors();
            foreach (ValidationRuleResult validationRuleResult
                in validationResultErrors)
            {
                MessageBox.Show(validationRuleResult.Message);
                return;
            }
        }

        public bool LoginIsValid()
        {
            bool isMatch = false;
            AccessibilityServiceClient client = new AccessibilityServiceClient();
            BCryptHashGenerator hashGenerator = new BCryptHashGenerator();
            PlayerCredentialsDTO playerCredentials = client.GetPlayerCredentials(_username);
            isMatch = hashGenerator.Match(_password, playerCredentials.Password);
            return isMatch;
        }

        public bool EmailIsVerified()
        {
            bool emailIsVerified = false;
            AccessibilityServiceClient client = new AccessibilityServiceClient();
            string username = TextBoxUsername.Text;
            emailIsVerified = client.IsVerified(username);
            return emailIsVerified;
        }


        public void GoToMainMenu()
        {
            MainMenu mainMenuView = new MainMenu();
            mainMenuView.Show();
            this.Close();
        }

        public string GetUserEmailAdress()
        {
            string emailAddress = "";
            AccessibilityServiceClient client = new AccessibilityServiceClient();
            string username = TextBoxUsername.Text;
            emailAddress = client.GetUserEmailAddress(username);
            return emailAddress;
        }

        private void LoginUser()
        {
            try
            {
                TryLoginUser();
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show(Properties.Langs.Resources.ServerConnectionLost);
            }
        }

        private void TryLoginUser()
        {
            if (LoginIsValid())
            {
                if (EmailIsVerified())
                {
                    Sesion playerSesion = Sesion.GetSesion;
                    playerSesion.Username = TextBoxUsername.Text;
                    playerSesion.EmailAddress = GetUserEmailAdress();
                    GoToMainMenu();
                }
                else
                {
                    ActivationToken activationTokenWindow =
                            new ActivationToken(GetUserEmailAdress(), TextBoxUsername.Text);

                    activationTokenWindow.Show();
                    this.Close();
                }
            }
            else
            {
                MessageBox.Show(Properties.Langs.Resources.NonMatchingCredentials);
            }
        }

        private void LoginButtonClicked(object sender, RoutedEventArgs e)
        {
            SetFormValidation();
            if (_ruleSet.AllValidationRulesHavePassed())
            {
                LoginUser();
            }
            else
            {
                ShowErrorMessage();
            }
        }

        private void BackButtonClicked(object sender, RoutedEventArgs e)
        {
            RedirectToMainWindowView();
        }

        private void RecoverPasswordLabelClicked(object sender, RoutedEventArgs e)
        {
            RecoverPassword mainWindowView = new RecoverPassword();
            mainWindowView.Show();
            this.Close();
        }

        private void RedirectToMainWindowView()
        {
            MainWindow mainWindowView = new MainWindow();
            mainWindowView.Show();
            this.Close();
        }
    }
}