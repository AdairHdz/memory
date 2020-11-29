using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGame.InputValidation.RegistryValidation
{
    public class EmailAddressAvailabilityValidationRule : IRegistryRule
    {
        public ValidationRuleResult Validate(RegistryData data)
        {
            string emailAddress = data.EmailAddress;
            MemoryGameService.PlayerRegistryServiceClient _playerRegistryServiceClient =
                new MemoryGameService.PlayerRegistryServiceClient();
            bool emailAddressIsAvailable =
                _playerRegistryServiceClient.EmailAddressIsAvailable(emailAddress);

            if (!emailAddressIsAvailable)
            {
                return new ValidationRuleResult(ValidationRuleResult.ERROR, "El email ingresado" +
                    "ya se encuentra registrado en nuestra base de datos");
            }
            return new ValidationRuleResult(ValidationRuleResult.SUCCESS);            
        }
    }
}
