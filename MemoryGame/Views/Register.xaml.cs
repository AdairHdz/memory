using MemoryGame.InputValidation;
using MemoryGame.InputValidation.RegistryValidation;
using MemoryGame.Utilities;
using System;
using System.Collections.Generic;
using System.ServiceModel;
using System.Windows;
using Utilities;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para Register.xaml
    /// </summary>
    /// 

    public partial class Register : Window
    {
        private static readonly log4net.ILog _logger = log4net.LogManager.GetLogger("Register.xaml.cs");
        private string _username, _emailAddress, _verificationToken, _password;      
        private RuleSet _ruleSet;
        private MemoryGameService.PlayerRegistryServiceClient _playerRegistryServiceClient;
        public Register()
        {            
            InitializeComponent();
            _playerRegistryServiceClient =
                new MemoryGameService.PlayerRegistryServiceClient();
        }

        private void SetFormValidation()
        {
            _ruleSet = new RuleSet();
            _ruleSet.AddValidationRule(new UsernameValidationRule(_username));
            _ruleSet.AddValidationRule(new EmailAddressValidationRule(_emailAddress));
            _ruleSet.AddValidationRule(new PasswordValidationRule(_password));
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

        private void GetValuesFromFields()
        {
            _emailAddress = TextBoxEmail.Text;
            _username = TextBoxUsername.Text;
            _password = PasswordBoxPassword.Password;
        }

        private void GenerateToken()
        {
            _verificationToken = TokenManager.GenerateVerificationToken();
        }

        private void RegisterButtonClicked(object sender, RoutedEventArgs e)
        {
            GetValuesFromFields();
            SetFormValidation();
            if (AllValidationRulesHavePassed())
            {
                try
                {
                    RegisterPlayer();
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

        private void RegisterPlayer()
        {
            bool emailAddressIsAvailable = false;
            bool usernameIsAvailable = false;

            if (EmailAddressIsAvailable())
            {
                emailAddressIsAvailable = true;
            }
            else
            {
                MessageBox.Show(Properties.Langs.Resources.EmailAddressIsTaken);
            }

            if (UsernameIsAvailable())
            {
                usernameIsAvailable = true;
            }
            else
            {
                MessageBox.Show(Properties.Langs.Resources.UsernameIsTaken);
            }
            
            if(emailAddressIsAvailable && usernameIsAvailable)
            {
                GenerateToken();
                if (PlayerWasSuccessfullyRegistered())
                {
                    SendVerificationToken();
                    GoToActivationTokenWindow();
                }
                else
                {
                    MessageBox.Show(Properties.Langs.Resources.RegistryError);
                }
            }

        }

        private bool AllValidationRulesHavePassed()
        {
            return _ruleSet.AllValidationRulesHavePassed();
        }

        private void SendVerificationToken()
        {
            TokenManager.SendVerificationToken(_username,
                    _emailAddress, _verificationToken);
        }

        private void CancelButtonClicked(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindowView = new MainWindow();
            mainWindowView.Show();
            this.Close();
        }

        private bool EmailAddressIsAvailable()
        {
            bool emailAddressIsAvailable = _playerRegistryServiceClient.EmailAddressIsAvailable(_emailAddress);            
            return emailAddressIsAvailable;
        }

        private bool UsernameIsAvailable()
        {

            bool usernameIsAvailable = _playerRegistryServiceClient.UserNameIsAvailable(_username);
            return usernameIsAvailable;
        }

        private bool PlayerWasSuccessfullyRegistered()
        {
            BCryptHashGenerator hashGenerator = new BCryptHashGenerator();
            string salt = hashGenerator.GenerateSalt();
            string encryptedPassword = hashGenerator.GenerateEncryptedString(_password, salt);
            MemoryGameService.PlayerRegistryServiceClient playerRegistryServiceClient =
                new MemoryGameService.PlayerRegistryServiceClient();

            MemoryGameService.DataTransferObjects.PlayerDTO playerDTO =
                new MemoryGameService.DataTransferObjects.PlayerDTO()
                {
                    Username = _username,
                    EmailAddress = _emailAddress,
                    Password = encryptedPassword,
                    VerificationToken = _verificationToken
                };

            bool playerWasSuccessfullyRegistered = playerRegistryServiceClient.RegisterNewPlayer(playerDTO, salt);
            return playerWasSuccessfullyRegistered;
        }

        private void GoToActivationTokenWindow()
        {
            ActivationToken activationTokenWindow =
                new ActivationToken(_emailAddress, _username);
            activationTokenWindow.Show();
            this.Close();
        }
    }
}
