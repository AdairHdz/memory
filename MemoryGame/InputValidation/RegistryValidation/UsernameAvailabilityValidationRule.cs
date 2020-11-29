using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGame.InputValidation.RegistryValidation
{
    public class UsernameAvailabilityValidationRule : IRegistryRule
    {
        public ValidationRuleResult Validate(RegistryData data)
        {
            string username = data.Username;
            MemoryGameService.PlayerRegistryServiceClient _playerRegistryServiceClient =
                new MemoryGameService.PlayerRegistryServiceClient();
            bool usernameIsAvailable = _playerRegistryServiceClient.UserNameIsAvailable(username);

            if (!usernameIsAvailable)
            {
                return new ValidationRuleResult(ValidationRuleResult.ERROR, "El nombre de usuario no está disponible");
            }
            return new ValidationRuleResult(ValidationRuleResult.SUCCESS);

        }
    }
}
