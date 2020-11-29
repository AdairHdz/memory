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
        public ValidationRuleResult Validate(RegistryData registryData)
        {
            string username = registryData.Username;
            Regex regularExpression = new Regex("^\\S+$");

            if(!regularExpression.IsMatch(username))
            {
                return new ValidationRuleResult(ValidationRuleResult.ERROR, "Nombre de usuario inválido");
            }
            return new ValidationRuleResult(ValidationRuleResult.SUCCESS);
        }
    }
}
