using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGame.InputValidation.RegistryValidation
{
    public class RegistryRuleSet : IRuleSet
    {
        public List<IValidationRule> RegistryRules { get; set; }
        private List<ValidationRuleResult> _validationResultErrors;

        public RegistryRuleSet()
        {
            RegistryRules = new List<IValidationRule>();
            _validationResultErrors = new List<ValidationRuleResult>();
        }

        public void AddValidationRule(IValidationRule validationRule)
        {
            RegistryRules.Add(validationRule);
        }

        private void LookForValidationErrors()
        {
            ClearValidationErrorsList();
            foreach (IValidationRule rule in RegistryRules)
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
