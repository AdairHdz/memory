using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGame.InputValidation.RegistryValidation
{
    public class UsernameAvailabilityValidationRule : IRegistryRule
    {
        private string _username;
        public ValidationRuleResult Validate(RegistryData data)
        {
            _username = data.Username;

            if (UsernameIsAvailable())
            {
                return new ValidationRuleResult(ValidationRuleResult.SUCCESS);                
            }
            return new ValidationRuleResult(ValidationRuleResult.ERROR, "El nombre de usuario no está disponible");
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
