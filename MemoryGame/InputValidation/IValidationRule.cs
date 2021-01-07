namespace MemoryGame.InputValidation
{
    public interface IValidationRule
    {
        bool Validate();
        ValidationRuleResult GetValidationRuleResult();
    }
}
