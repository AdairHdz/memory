using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace MemoryGame.InputValidation.RegistryValidation
{
    public class UsernameValidationRule : IRegistryRule
    {
        private string _username;
        public ValidationRuleResult Validate(RegistryData registryData)
        {
            _username = registryData.Username;
            
            if(HasValidFormat() && IsBetween4And16CharactersLength())
            {
                return new ValidationRuleResult(ValidationRuleResult.SUCCESS);
            }
            return new ValidationRuleResult(ValidationRuleResult.ERROR, "Nombre de usuario inválido");            
        }

        private bool HasValidFormat()
        {
            Regex regularExpression = new Regex("^\\S+$");
            bool hasValidFormat = regularExpression.IsMatch(_username);
            return hasValidFormat;
        }

        private bool IsBetween4And16CharactersLength()
        {
            return _username.Length >= 4 && _username.Length <= 16;
        }
    }
}
