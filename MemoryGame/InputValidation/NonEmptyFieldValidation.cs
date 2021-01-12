using System;

namespace MemoryGame.InputValidation.GenericValidations
{
    /// <inheritdoc/>
    public class NonEmptyFieldValidation : IValidationRule
    {
        private readonly string _inputField;

        /// <summary>
        /// The <c>NonEmptyFieldValidarion</c> constructor.
        /// </summary>
        /// <param name="inputField"> the input from the field to be validated</param>
        public NonEmptyFieldValidation(string inputField)
        {
            _inputField = inputField;
        }

        /// <inheritdoc/>
        public ValidationRuleResult GetValidationRuleResult()
        {
            if (IsNotEmpty())
            {
                return new ValidationRuleResult(ValidationRuleResult.SUCCESS);
            }
            return new ValidationRuleResult(ValidationRuleResult.ERROR,
                Properties.Langs.Resources.EmptyField);
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
