namespace MemoryGame.InputValidation.RegistryValidation
{
    public class UsernameAvailabilityValidationRule : IValidationRule
    {
        private string _username;

        public UsernameAvailabilityValidationRule(string username)
        {
            _username = username;
        }

        public ValidationRuleResult GetValidationRuleResult()
        {
            if (UsernameIsAvailable())
            {
                return new ValidationRuleResult(ValidationRuleResult.SUCCESS);
            }
            return new ValidationRuleResult(ValidationRuleResult.ERROR,
                Properties.Langs.Resources.UsernameIsTaken);
        }

        public bool Validate()
        {
            ValidationRuleResult validationRuleResult = GetValidationRuleResult();
            if (validationRuleResult.Status == ValidationRuleResult.SUCCESS)
            {
                return true;
            }
            return false;
        }

        private bool UsernameIsAvailable()
        {
            MemoryGameService.PlayerRegistryServiceClient _playerRegistryServiceClient =
                new MemoryGameService.PlayerRegistryServiceClient();

            bool usernameIsAvailable = _playerRegistryServiceClient.UserNameIsAvailable(_username);

            return usernameIsAvailable;
        }
    }
}
