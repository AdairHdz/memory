﻿namespace MemoryGame.InputValidation.RegistryValidation
{
    public class UsernameAvailabilityValidationRule : IRegistryRule
    {
        private string _username;
        public ValidationRuleResult Validate(RegistryData registryData)
        {
            _username = registryData.Username;

            if (UsernameIsAvailable())
            {
                return new ValidationRuleResult(ValidationRuleResult.SUCCESS);                
            }
            return new ValidationRuleResult(ValidationRuleResult.ERROR,
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
