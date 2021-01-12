namespace MemoryGame.InputValidation
{
    /// <summary>
    /// The <c>IValidationRule</c> interface.
    /// Provides a set of base operations to validate input data.
    /// This base operations are:
    /// <list type="bullet">
    /// <item>
    /// <term>Validate</term>
    /// <description>Validates the input data.</description>
    /// </item>
    /// <item>
    /// <term>GetValidationRuleSet</term>
    /// <description>
    /// Returns the rule set for the data being validated.
    /// </description>
    /// </item>
    /// </list>
    /// </summary>
    public interface IValidationRule
    {
        /// <summary>
        /// Validates the input data.
        /// </summary>
        /// <returns></returns>
        bool Validate();
        /// <summary>
        /// Returns the rule set for the data being validated.
        /// </summary>
        /// <returns></returns>
        ValidationRuleResult GetValidationRuleResult();
    }
}
