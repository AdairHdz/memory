namespace MemoryGame.InputValidation.RegistryValidation
{
    public class EmailAddressAvailabilityValidationRule : IValidationRule
    {
        private string _emailAddress;
        private ValidationRuleResult _validationRuleResult;
        public EmailAddressAvailabilityValidationRule(string emailAddress)
        {
            _emailAddress = emailAddress;
            SetValidationRuleResult();
        }


        public bool Validate()
        {
            if(_validationRuleResult.Status == ValidationRuleResult.SUCCESS)
            {
                return true;
            }
            return false;
        }

        private void SetValidationRuleResult()
        {
            if (EmailAddressIsAvailable())
            {
                _validationRuleResult = new ValidationRuleResult(ValidationRuleResult.SUCCESS);
            }

            _validationRuleResult = new ValidationRuleResult(ValidationRuleResult.ERROR,
                Properties.Langs.Resources.EmailAddressIsTaken);
        }

        private bool EmailAddressIsAvailable()
        {
            MemoryGameService.PlayerRegistryServiceClient playerRegistryServiceClient =
                new MemoryGameService.PlayerRegistryServiceClient();

            bool emailAddressIsAvailable =
                playerRegistryServiceClient.EmailAddressIsAvailable(_emailAddress);

            return emailAddressIsAvailable;
        }

        public ValidationRuleResult GetValidationRuleResult()
        {
            return _validationRuleResult;
        }
    }
}
