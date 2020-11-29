using MemoryGame.InputValidation;
using MemoryGame.InputValidation.RegistryValidation;
using MemoryGame.Utilities;
using System.Collections.Generic;
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
        private string _verificationToken;
        private RegistryData _registryData;
        private List<IRegistryRule> _rules;
        private List<ValidationRuleResult> _validationResultErrors;


        public Register()
        {            
            InitializeComponent();
            SetFormValidation();
        }

        private void SetFormValidation()
        {
            _rules = new List<IRegistryRule>();
            _rules.Add(new UsernameValidationRule());
            _rules.Add(new EmailAddressValidationRule());
            _rules.Add(new PasswordValidationRule());
            _rules.Add(new EmailAddressAvailabilityValidationRule());
            _rules.Add(new UsernameAvailabilityValidationRule());
        }

        private void ObtainValidationErrors()
        {
            _validationResultErrors = new List<ValidationRuleResult>();
            foreach (IRegistryRule rule in _rules)
            {
                ValidationRuleResult validationRuleResult = rule.Validate(_registryData);
                if (validationRuleResult.Status == ValidationRuleResult.ERROR)
                {
                    _validationResultErrors.Add(validationRuleResult);
                }
            }
        }

        private void ShowErrorMessage()
        {
            foreach (ValidationRuleResult validationRuleResult
                in _validationResultErrors)
            {
                MessageBox.Show(validationRuleResult.Message);
                return;
            }
        }

        private bool ValidationPassed()
        {
            ObtainValidationErrors();
            if (_validationResultErrors.Count == 0)
            {
                return true;
            }
            return false;
        }

        private void RegisterButtonClicked(object sender, RoutedEventArgs e)
        {
            _registryData = new RegistryData()
            {
                EmailAddress = TextBoxEmail.Text,
                Username = TextBoxUsername.Text,
                Password = PasswordBoxPassword.Password
            };

            if (ValidationPassed())
            {
                _registryData.Password = MD5Encryption.Encrypt(_registryData.Password);
                _verificationToken = TokenManager.GenerateVerificationToken();

                if (PlayerWasSuccessfullyRegistered())
                {
                    SendVerificationToken();
                    GoToActivationTokenWindow();
                }
                else
                {
                    MessageBox.Show("Error al registrar");
                }                
            }
            else
            {
                ShowErrorMessage();
            }                       
        }

        private void SendVerificationToken()
        {
            TokenManager.SendVerificationToken(_registryData.Username,
                    _registryData.EmailAddress, _verificationToken);
        }

        private void CancelButtonClicked(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindowView = new MainWindow();
            mainWindowView.Show();
            this.Close();
        }

        private bool PlayerWasSuccessfullyRegistered()
        {
            MemoryGameService.PlayerRegistryServiceClient playerRegistryServiceClient =
                new MemoryGameService.PlayerRegistryServiceClient();

            MemoryGameService.DataTransferObjects.PlayerDTO playerDTO =
                new MemoryGameService.DataTransferObjects.PlayerDTO()
                {
                    Username = _registryData.Username,
                    EmailAddress = _registryData.EmailAddress,
                    Password = _registryData.Password,
                    VerificationToken = _verificationToken
                };
            
            return playerRegistryServiceClient.RegisterNewPlayer(playerDTO);
        }

        private void GoToActivationTokenWindow()
        {
            ActivationToken activationTokenWindow =
                new ActivationToken(_registryData.EmailAddress, _registryData.Username);
            activationTokenWindow.Show();
            this.Close();
        }
    }
}
