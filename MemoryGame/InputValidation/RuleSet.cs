using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGame.InputValidation
{
    public class RuleSet
    {
        public List<ValidationRule> ValidationRules { get; set; }
        public List<ValidationRuleResult> ValidationResultErrors
        {
            get
            {
                LookForValidationErrors();
                return ValidationResultErrors;
            }
            set
            {
                ValidationResultErrors = value;
            }
        }

        public RuleSet()
        {
            ValidationRules = new List<ValidationRule>();
            ValidationResultErrors = new List<ValidationRuleResult>();
        }

        public void AddValidationRule(ValidationRule validationRule)
        {
            ValidationRules.Add(validationRule);
        }

        public bool AllValidationRulesHavePassed()
        {
            LookForValidationErrors();
            if (ValidationResultErrors.Count == 0)
            {
                return true;
            }
            return false;
        }

        public List<ValidationRuleResult> GetValidationResultErrors()
        {
            LookForValidationErrors();
            return ValidationResultErrors;
        }

        private void LookForValidationErrors()
        {
            ClearValidationErrorsList();
            foreach (IValidationRule rule in ValidationRules)
            {
                ValidationRuleResult validationRuleResult = rule.GetValidationRuleResult();
                if (validationRuleResult.Status == ValidationRuleResult.ERROR)
                {
                    ValidationResultErrors.Add(validationRuleResult);
                }
            }
        }

        private void ClearValidationErrorsList()
        {
            ValidationResultErrors.Clear();
        }
    }
}
