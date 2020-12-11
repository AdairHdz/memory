using System.Collections.Generic;
using System.Windows;
using MemoryGame.InputValidation;
using MemoryGame.InputValidation.RegistryValidation;
using MemoryGame.MemoryGameService;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para RecoverPassword.xaml
    /// </summary>
    public partial class RecoverPassword : Window
    {
        private string _verificationToken;
        private RuleSet _ruleSet;
        private string _emailAddress;
        public RecoverPassword()
        {
            InitializeComponent();
        }

        private void SetFormValidation()
        {
            _ruleSet = new RuleSet();
            _ruleSet.AddValidationRule(new EmailAddressValidationRule(_emailAddress));
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

        private void CancelButtonClicked(object sender, RoutedEventArgs e)
        {
            Login loginView = new Login();
            loginView.Show();
            this.Close();
        }

        private bool EmailIsRegistered()
        {
            AccessibilityServiceClient client = new AccessibilityServiceClient();
            return client.ItsRegistered(_emailAddress);
        }

        private string GetUsername()
        {
            AccessibilityServiceClient client = new AccessibilityServiceClient();
            return client.GetUsername(_emailAddress);
        }

        private void GenerateVerificationToken()
        {
            TokenGeneratorClient client = new TokenGeneratorClient();
            _verificationToken = client.GenerateToken(6);
        }

        private void SendVerificationCode()
        {
            MailingServiceClient client =
                new MailingServiceClient();
            client.SendVerificationToken(GetUsername(), _emailAddress, _verificationToken);

            AccountVerificationServiceClient accountVerificationServiceClient =
                new AccountVerificationServiceClient();
            accountVerificationServiceClient.AssignNewVerificationToken(TextBoxEmail.Text, _verificationToken);
        }

        private void SendCodeButtonClicked(object sender, RoutedEventArgs e)
        {
            _emailAddress = TextBoxEmail.Text;
            SetFormValidation();
            if (_ruleSet.AllValidationRulesHavePassed())
            {
                if (EmailIsRegistered())
                {
                    GenerateVerificationToken();
                    SendVerificationCode();
                    RestorePassword restorePasswordWindow =
                        new RestorePassword(_emailAddress, GetUsername());
                    restorePasswordWindow.Show();
                    this.Close();
                }
                else
                {
                    MessageBox.Show(Properties.Langs.Resources.NonRegisteredEmail);
                }
            }
            else
            {
                ShowErrorMessage();
            }
        }

    }
}
