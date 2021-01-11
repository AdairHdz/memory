using System.Collections.Generic;

namespace MemoryGame.InputValidation
{
    public interface IRuleSet
    {
        void AddValidationRule(IValidationRule validationRule);
        bool AllValidationRulesHavePassed();
        List<ValidationRuleResult> GetValidationResultErrors();
    }
}
