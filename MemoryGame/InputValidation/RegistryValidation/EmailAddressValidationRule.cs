using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace MemoryGame.InputValidation.RegistryValidation
{
    public class EmailAddressValidationRule : IRegistryRule
    {
        public ValidationRuleResult Validate(RegistryData registryData)
        {
            string emailAddress = registryData.EmailAddress;
            Regex regularExpression = new Regex("^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$");            
            if (!regularExpression.IsMatch(emailAddress))
            {
                return new ValidationRuleResult(ValidationRuleResult.ERROR, "Email inválido");
            }
            return new ValidationRuleResult(ValidationRuleResult.SUCCESS);
        }
    }
}
