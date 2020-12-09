using MemoryGame.InputValidation;
using MemoryGame.InputValidation.RegistryValidation;
using MemoryGame.Utilities;
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
        private string _username, _emailAddress, _verificationToken, _password;      
        private IRuleSet _ruleSet;
        public Register()
        {            
            InitializeComponent();
        }

        private void SetFormValidation()
        {
            _ruleSet = new RegistryRuleSet();
            //_ruleSet.AddValidationRule(new EmailAddressValidationRule(_emailAddress));
            _ruleSet.AddValidationRule(new EmailAddressAvailabilityValidationRule(_emailAddress));
            //_ruleSet.AddValidationRule(new PasswordValidationRule(_password));
            //_ruleSet.AddValidationRule(new UsernameValidationRule(_username));
            //_ruleSet.AddValidationRule(new EmailAddressValidationRule(_username));
            _ruleSet.AddValidationRule(new EmailAddressAvailabilityValidationRule(_emailAddress));
            //_ruleSet.AddValidationRule(new UsernameAvailabilityValidationRule(_username));
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
            if (_ruleSet.AllValidationRulesHavePassed())
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
            else
            {
                ShowErrorMessage();
            }                       
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

        private bool PlayerWasSuccessfullyRegistered()
        {
            MemoryGameService.PlayerRegistryServiceClient playerRegistryServiceClient =
                new MemoryGameService.PlayerRegistryServiceClient();

            MemoryGameService.DataTransferObjects.PlayerDTO playerDTO =
                new MemoryGameService.DataTransferObjects.PlayerDTO()
                {
                    Username = _username,
                    EmailAddress = _emailAddress,
                    Password = MD5Encryption.Encrypt(PasswordBoxPassword.Password),
                    VerificationToken = _verificationToken
                };
            
            bool playerWasSucessfullyRegistered = playerRegistryServiceClient.RegisterNewPlayer(playerDTO);
            return playerWasSucessfullyRegistered;
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
