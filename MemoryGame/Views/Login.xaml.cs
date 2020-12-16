using MemoryGame.MemoryGameService;
using System.Windows;
using Utilities;
using DataAccess.Entities;
using MemoryGame.InputValidation;
using MemoryGame.InputValidation.GenericValidations;
using System.Collections.Generic;
using MemoryGame.MemoryGameService.DataTransferObjects;
using System.ServiceModel;
using System;

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
            AccessibilityServiceClient client = new AccessibilityServiceClient();
            BCryptHashGenerator hashGenerator = new BCryptHashGenerator();

            PlayerCredentialsDTO playerCredentials = client.GetPlayerCredentials(_username);

            bool isMatch = hashGenerator.Match(_password, playerCredentials.Password);

            return isMatch;
        }

        public bool EmailIsVerified()
        {
            AccessibilityServiceClient client = new AccessibilityServiceClient();

            string username = TextBoxUsername.Text;

            return client.IsVerified(username);
        }


        public void GoToMainMenu()
        {
            MainMenu mainMenuView = new MainMenu();
            mainMenuView.Show();
            this.Close();
        }

        public string GetUserEmailAdress()
        {
            AccessibilityServiceClient client = new AccessibilityServiceClient();

            string username = TextBoxUsername.Text;

            return client.GetUserEmailAddress(username);
        }

        private void LoginButtonClicked(object sender, RoutedEventArgs e)
        {
            SetFormValidation();
            if (_ruleSet.AllValidationRulesHavePassed())
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
            else
            {
                ShowErrorMessage();
            }

        }

        private void BackButtonClicked(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindowView = new MainWindow();
            mainWindowView.Show();
            this.Close();
        }

        private void RecoverPasswordLabelClicked(object sender, RoutedEventArgs e)
        {
            RecoverPassword mainWindowView = new RecoverPassword();
            mainWindowView.Show();
            this.Close();
        }
    }
}