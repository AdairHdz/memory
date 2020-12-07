namespace MemoryGame.InputValidation.RegistryValidation
{
    public interface IRegistryRule
    {
        ValidationRuleResult Validate(RegistryData registryData);
    }
}
