namespace MemoryGame.InputValidation
{
    public abstract class ValidationRule
    {
        protected ValidationRuleResult _validationRuleResult;

        public ValidationRule()
        {
            SetValidationRuleResult();
        }
        
        protected abstract void SetValidationRuleResult();
        public bool Validate()
        {
            if (_validationRuleResult.Status == ValidationRuleResult.SUCCESS)
            {
                return true;
            }
            return false;
        }
        
        public ValidationRuleResult GetValidationRuleResult()
        {
            return _validationRuleResult;
        }
    }
}
