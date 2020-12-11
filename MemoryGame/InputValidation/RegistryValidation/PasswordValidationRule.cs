using System.Text.RegularExpressions;

namespace MemoryGame.InputValidation.RegistryValidation
{
    public class PasswordValidationRule : IValidationRule
    {
        private string _password;
        private Regex _regularExpression;
        private MatchCollection _matches;

        public PasswordValidationRule(string password)
        {
            _password = password;
        }

        private bool HasAtLeastOneSpecialCharacter()
        {
            _regularExpression = new Regex("\\W+");
            _matches = _regularExpression.Matches(_password);
            return _matches.Count >= 1;
        }

        private bool HasAtLeastOneCapitalLetter()
        {
            _regularExpression = new Regex("[A-Z+]");
            _matches = _regularExpression.Matches(_password);
            return _matches.Count >= 1;
        }

        private bool HasAtLeastOneNumericCharacter()
        {
            _regularExpression = new Regex("[0-9]");
            _matches = _regularExpression.Matches(_password);
            return _matches.Count >= 1;
        }

        private bool HasAtLeastOneLowercaseLetter()
        {
            _regularExpression = new Regex("[a-z+]");
            _matches = _regularExpression.Matches(_password);
            return _matches.Count >= 1;
        }

        private bool IsBetween8And25CharactersLength()
        {
            return _password.Length >= 8 && _password.Length <= 25;
        }


        public bool Validate()
        {
            ValidationRuleResult validationRuleResult = GetValidationRuleResult();
            if (validationRuleResult.Status == ValidationRuleResult.SUCCESS)
            {
                return true;
            }
            return false;
        }

        public ValidationRuleResult GetValidationRuleResult()
        {
            if (HasAtLeastOneSpecialCharacter()
                && HasAtLeastOneCapitalLetter()
                && HasAtLeastOneLowercaseLetter()
                && IsBetween8And25CharactersLength()
                && HasAtLeastOneNumericCharacter())
            {
                return new ValidationRuleResult(ValidationRuleResult.SUCCESS);
            }

            return new ValidationRuleResult(ValidationRuleResult.ERROR,
                Properties.Langs.Resources.PasswordIsInvalid);
        }
    }
}
