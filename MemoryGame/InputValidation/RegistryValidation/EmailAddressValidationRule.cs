﻿using System.Text.RegularExpressions;

namespace MemoryGame.InputValidation.RegistryValidation
{
    public class EmailAddressValidationRule : IRegistryRule
    {
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
            Regex regularExpression = new Regex("^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$");
            bool hasValidFormat = regularExpression.IsMatch(_emailAddress);
            return hasValidFormat;
        }

        private bool IsLessOrEqualsThan254CharactersLength()
        {
            return _emailAddress.Length <= 254;
        }
    }
}
