using System.Text.RegularExpressions;

namespace MemoryGame.InputValidation.RegistryValidation
{
    public class EmailAddressValidationRule : ValidationRule
    {
        private string _emailAddress;

        public EmailAddressValidationRule(string emailAddress)
        {
            _emailAddress = emailAddress;
        }

        protected override void SetValidationRuleResult()
        {
            if (HasValidFormat() && IsLessOrEqualsThan254CharactersLength())
            {
                ValidationRuleResult = new ValidationRuleResult(ValidationRuleResult.SUCCESS);
            }
            ValidationRuleResult = new ValidationRuleResult(ValidationRuleResult.ERROR,
                Properties.Langs.Resources.EmailAddressIsInvalid);
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
