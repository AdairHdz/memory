﻿namespace MemoryGame.InputValidation.RegistryValidation
{
    public class EmailAddressAvailabilityValidationRule : IRegistryRule
    {
        private string _emailAddress;
        public ValidationRuleResult Validate(RegistryData registryData)
        {
            _emailAddress = registryData.EmailAddress;

            if (EmailAddressIsAvailable())
            {
                return new ValidationRuleResult(ValidationRuleResult.SUCCESS);
            }

            return new ValidationRuleResult(ValidationRuleResult.ERROR, 
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
    }
}
