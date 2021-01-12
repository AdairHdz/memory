using System.Collections.Generic;

namespace MemoryGame.InputValidation
{
    /// <inheritdoc/>
    public class RuleSet
    {
        /// <summary>
        /// The validation rules to be evaluated.
        /// </summary>
        public List<IValidationRule> ValidationRules { get; set; }
        private readonly List<ValidationRuleResult> _validationResultErrors;

        /// <summary>
        /// The <c>VRuleSet</c> constructor.
        /// </summary>
        public RuleSet()
        {
            ValidationRules = new List<IValidationRule>();
            _validationResultErrors = new List<ValidationRuleResult>();
        }

        /// <inheritdoc/>
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

        /// <inheritdoc/>
        public bool AllValidationRulesHavePassed()
        {
            LookForValidationErrors();
            if (_validationResultErrors.Count == 0)
            {
                return true;
            }
            return false;
        }

        /// <inheritdoc/>
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
