namespace MemoryGame.InputValidation.RegistryValidation
{
    public class UsernameAvailabilityValidationRule : ValidationRule
    {
        private string _username;

        public UsernameAvailabilityValidationRule(string username)
        {
            _username = username;
        }

        protected override void SetValidationRuleResult()
        {
            if (UsernameIsAvailable())
            {
                ValidationRuleResult = new ValidationRuleResult(ValidationRuleResult.SUCCESS);
            }
            ValidationRuleResult = new ValidationRuleResult(ValidationRuleResult.ERROR,
                Properties.Langs.Resources.UsernameIsTaken);
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
