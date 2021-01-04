using System.Collections.Generic;

namespace MemoryGame.InputValidation
{
    public class RuleSet
    {
        public List<IValidationRule> ValidationRules { get; set; }
        private List<ValidationRuleResult> _validationResultErrors;

        public RuleSet()
        {
            ValidationRules = new List<IValidationRule>();
            _validationResultErrors = new List<ValidationRuleResult>();
        }

        public void AddValidationRule(IValidationRule validationRule)
        {
            ValidationRules.Add(validationRule);
        }

        private void LookForValidationErrors()
        {
            ClearValidationErrorsList();
            foreach (IValidationRule rule in ValidationRules)
            {
                ValidationRuleResult validationRuleResult = rule.GetValidationRuleResult();
                if (validationRuleResult.Status == ValidationRuleResult.ERROR)
                {
                    _validationResultErrors.Add(validationRuleResult);
                }
            }
        }

        public bool AllValidationRulesHavePassed()
        {
            LookForValidationErrors();
            if (_validationResultErrors.Count == 0)
            {
                return true;
            }
            return false;
        }

        public List<ValidationRuleResult> GetValidationResultErrors()
        {
            LookForValidationErrors();
            return _validationResultErrors;
        }



        private void ClearValidationErrorsList()
        {
            _validationResultErrors.Clear();
        }
    }
}
