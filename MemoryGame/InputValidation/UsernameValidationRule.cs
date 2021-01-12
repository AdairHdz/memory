using System.Text.RegularExpressions;

namespace MemoryGame.InputValidation.RegistryValidation
{
    /// <inheritdoc/>
    public class UsernameValidationRule : IValidationRule
    {
        private readonly string _username;

        /// <summary>
        /// The <c>UsernameValidationRule</c> constructor.
        /// </summary>
        /// <param name="username">The username to be validated.</param>
        public UsernameValidationRule(string username)
        {
            _username = username;
        }

        /// <inheritdoc/>
        public ValidationRuleResult GetValidationRuleResult()
        {
            if (HasValidFormat() && IsBetween4And16CharactersLength())
            {
                return new ValidationRuleResult(ValidationRuleResult.SUCCESS);
            }
            return new ValidationRuleResult(ValidationRuleResult.ERROR,
                Properties.Langs.Resources.UsernameIsInvalid);
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
