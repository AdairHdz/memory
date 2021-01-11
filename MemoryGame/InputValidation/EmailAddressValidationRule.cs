using System.Text.RegularExpressions;

namespace MemoryGame.InputValidation.RegistryValidation
{
    public class EmailAddressValidationRule : IValidationRule
    {
        private readonly string _emailAddress;

        public EmailAddressValidationRule(string emailAddress)
        {
            _emailAddress = emailAddress;
        }

        public ValidationRuleResult GetValidationRuleResult()
        {
            if (HasValidFormat() && IsLessOrEqualsThan254CharactersLength())
            {
                return new ValidationRuleResult(ValidationRuleResult.SUCCESS);
            }
            return new ValidationRuleResult(ValidationRuleResult.ERROR,
                Properties.Langs.Resources.EmailAddressIsInvalid);
        }

        public bool Validate()
        {
            ValidationRuleResult validationRuleResult = GetValidationRuleResult();
            if(validationRuleResult.Status == ValidationRuleResult.SUCCESS)
            {
                return true;
            }
            return false;
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
