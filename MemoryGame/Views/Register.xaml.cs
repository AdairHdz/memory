using MemoryGame.InputValidation;
using MemoryGame.InputValidation.RegistryValidation;
using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGame.Utilities;
using System;
using System.Collections.Generic;
using System.ServiceModel;
using System.Windows;
using Utilities;

namespace MemoryGame
{
    /// <summary>
    /// Interaction logic for Register.xaml
    /// </summary>
    /// 

    public partial class Register : Window
    {
        private string _username, _emailAddress, _verificationToken, _password;      
        private RuleSet _ruleSet;
        private MemoryGameService.PlayerRegistryServiceClient _playerRegistryServiceClient;
        
        /// <summary>
        /// The <c>Register</c> constructor.
        /// </summary>
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
            IList<ValidationRuleResult> validationResultErrors = _ruleSet.GetValidationResultErrors();
            if (validationResultErrors.Count > 0)
            {
                MessageBox.Show(validationResultErrors[0].Message);
            }
        }

        private void GetValuesFromFields()
        {
            _emailAddress = EmailTextBox.Text;
            _username = UsernameTextBox.Text;
            _password = PasswordPasswordBox.Password;
        }

        private void GenerateToken()
        {
            _verificationToken = TokenManager.GenerateToken();
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

        private void RegisterPlayer()
        {
            if (!EmailAddressIsAvailable())
            {
                MessageBox.Show(Properties.Langs.Resources.EmailAddressIsTaken);
            }
            else if (!UsernameIsAvailable())
            {
                MessageBox.Show(Properties.Langs.Resources.UsernameIsTaken);
            }
            else
            {
                GenerateToken();
                if (PlayerWasSuccessfullyRegistered())
                {
                    SendActivationToken();
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

        private void SendActivationToken()
        {
            TokenInfoDto verificationTokenInfo = new TokenInfoDto()
            {
                Name = _username,
                EmailAddress = _emailAddress,
                Token = _verificationToken,
                Subject = Properties.Langs.Resources.Welcome,
                Body = Properties.Langs.Resources.VerificationToken
            };

            TokenManager.SendToken(verificationTokenInfo);
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

            PlayerDto playerDTO = new PlayerDto()
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
