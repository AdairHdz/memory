using System.Text.RegularExpressions;

namespace MemoryGame.InputValidation.RegistryValidation
{
    /// <inheritdoc/>
    public class PasswordValidationRule : IValidationRule
    {
        private readonly string _password;        

        /// <summary>
        /// The <c>PasswordValidationRule</c> constructor.
        /// </summary>
        /// <param name="password">The password to be validated</param>
        public PasswordValidationRule(string password)
        {
            _password = password;
        }

        private bool HasAtLeastOneSpecialCharacter()
        {
            Regex regularExpression = new Regex("\\W+");
            MatchCollection matches = regularExpression.Matches(_password);
            return matches.Count >= 1;
        }

        private bool HasAtLeastOneCapitalLetter()
        {
            Regex regularExpression = new Regex("[A-Z+]");
            MatchCollection matches = regularExpression.Matches(_password);
            return matches.Count >= 1;
        }

        private bool HasAtLeastOneNumericCharacter()
        {
            Regex regularExpression = new Regex("[0-9]");
            MatchCollection matches = regularExpression.Matches(_password);
            return matches.Count >= 1;
        }

        private bool HasAtLeastOneLowercaseLetter()
        {
            Regex regularExpression = new Regex("[a-z+]");
            MatchCollection matches = regularExpression.Matches(_password);
            return matches.Count >= 1;
        }

        private bool IsBetween8And25CharactersLength()
        {
            return _password.Length >= 8 && _password.Length <= 25;
        }

        /// <inheritdoc/>
        public bool Validate()
        {
            ValidationRuleResult validationRuleResult = GetValidationRuleResult();
            if (validationRuleResult.Status == ValidationRuleResult.SUCCESS)
            {
                return true;
            }
            return false;
        }

        /// <inheritdoc/>
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
