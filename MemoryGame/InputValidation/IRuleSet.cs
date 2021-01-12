using System.Collections.Generic;

namespace MemoryGame.InputValidation
{
    /// <summary>
    /// The <c>IRuleSet</c> interface.
    /// Defines base methods to add validation rules and
    /// to check that all the validation rules have passed.
    /// This base methods are:
    /// <list type="bullet">
    /// <item>
    /// <term>AddValidationRule</term>
    /// <description>
    /// Adds a validation rule.
    /// </description>
    /// </item>
    /// <item>
    /// <term>AllValidationRulesHavePassed</term>
    /// <description>
    /// Checks that all validation rules have passed.
    /// </description>
    /// </item>
    /// <item>
    /// <term>GetValidationResultErrors</term>
    /// <description>
    /// Returns the errors from the <c>ValidationRuleSet</c>
    /// </description>
    /// </item>
    /// </list>
    /// </summary>
    public interface IRuleSet
    {
        /// <summary>
        /// Adds a validation rule.
        /// </summary>
        /// <param name="validationRule">The validation rule to be set</param>
        void AddValidationRule(IValidationRule validationRule);
        /// <summary>
        /// Checks that all validation rules have passed.
        /// </summary>
        /// <returns>
        /// true if all validation rules passed; false if they don't.
        /// </returns>
        bool AllValidationRulesHavePassed();
        /// <summary>
        /// Returns the errors from the <c>ValidationRuleSet</c>
        /// </summary>
        /// <returns>
        /// The actual <c>ValidationRuleSet</c>
        /// </returns>
        List<ValidationRuleResult> GetValidationResultErrors();
    }
}
