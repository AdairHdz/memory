using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGame.InputValidation.RegistryValidation
{
    public class EmailAddressAvailabilityValidationRule : IRegistryRule
    {
        private string _emailAddress;
        public ValidationRuleResult Validate(RegistryData data)
        {
            _emailAddress = data.EmailAddress;

            if (EmailAddressIsAvailable())
            {
                return new ValidationRuleResult(ValidationRuleResult.SUCCESS);
            }

            return new ValidationRuleResult(ValidationRuleResult.ERROR, "El email ingresado" +
                "ya se encuentra registrado en nuestra base de datos");
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
