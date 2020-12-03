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
        private Regex _regularExpression;
        private string _emailAddress;

        public ValidationRuleResult Validate(RegistryData registryData)
        {
            _emailAddress = registryData.EmailAddress;
            
            if (HasValidFormat() && IsLessOrEqualsThan254CharactersLength())
            {
                return new ValidationRuleResult(ValidationRuleResult.SUCCESS);
            }
            return new ValidationRuleResult(ValidationRuleResult.ERROR, "Email inválido");            
        }

        private bool HasValidFormat()
        {
            _regularExpression = new Regex("^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$");
            bool hasValidFormat = _regularExpression.IsMatch(_emailAddress);
            return hasValidFormat;
        }

        private bool IsLessOrEqualsThan254CharactersLength()
        {
            return _emailAddress.Length <= 254;
        }
    }
}
