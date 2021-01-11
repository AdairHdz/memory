using System;

namespace MemoryGame.InputValidation.GenericValidations
{
    public class NonEmptyFieldValidation : IValidationRule
    {
        private readonly string _inputField;
        public NonEmptyFieldValidation(string inputField)
        {
            _inputField = inputField;
        }

        public ValidationRuleResult GetValidationRuleResult()
        {
            if (IsNotEmpty())
            {
                return new ValidationRuleResult(ValidationRuleResult.SUCCESS);
            }
            return new ValidationRuleResult(ValidationRuleResult.ERROR,
                Properties.Langs.Resources.EmptyField);
        }

        public bool Validate()
        {
            throw new NotImplementedException();
        }

        private bool DoesNotContainWhiteSpaceAtTheBeggining()
        {
            string trimInputField = _inputField.Trim();
            if(trimInputField.Length != 0)
            {
                return true;
            }
            return false;
        }

        private bool IsNotEmpty()
        {
            int inputFieldValueLength = _inputField.Length;
            if(DoesNotContainWhiteSpaceAtTheBeggining() 
                && inputFieldValueLength > 0)
            {
                return true;
            }
            return false;
        }
    }
}
