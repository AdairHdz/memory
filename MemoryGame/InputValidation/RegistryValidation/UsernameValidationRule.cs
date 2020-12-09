using System.Text.RegularExpressions;

namespace MemoryGame.InputValidation.RegistryValidation
{
    public class UsernameValidationRule : ValidationRule
    {
        private string _username;

        public UsernameValidationRule(string username)
        {
            _username = username;
        }

        protected override void SetValidationRuleResult()
        {
            if (HasValidFormat() && IsBetween4And16CharactersLength())
            {
                ValidationRuleResult = new ValidationRuleResult(ValidationRuleResult.SUCCESS);
            }
            ValidationRuleResult = new ValidationRuleResult(ValidationRuleResult.ERROR,
                Properties.Langs.Resources.UsernameIsInvalid);
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
