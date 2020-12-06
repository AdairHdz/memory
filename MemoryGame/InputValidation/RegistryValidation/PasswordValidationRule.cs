using System;
using System.Collections.Generic;
using System.Linq;
using System.Security;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace MemoryGame.InputValidation.RegistryValidation
{
    public class PasswordValidationRule : IRegistryRule
    {
        private string _password;
        private Regex _regularExpression;
        private MatchCollection _matches;
        public ValidationRuleResult Validate(RegistryData registrationData)
        {
            _password = registrationData.Password;
            if(HasAtLeastOneSpecialCharacter()
                && HasAtLeastOneCapitalLetter()
                && HasAtLeastOneLowercaseLetter()
                && IsBetween8And25CharactersLength()
                && HasAtLeastOneNumericCharacter())
            {
                return new ValidationRuleResult(ValidationRuleResult.SUCCESS);
            }

            return new ValidationRuleResult(ValidationRuleResult.ERROR, "Contraseña inválida");
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
    }
}
