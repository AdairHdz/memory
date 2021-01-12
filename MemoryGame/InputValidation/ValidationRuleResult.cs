namespace MemoryGame.InputValidation
{
    /// <summary>
    /// The <c>ValidationRuleSet</c> class.
    /// Defines a status and an error for the validation rules.
    /// </summary>
    public class ValidationRuleResult
    {
        /// <summary>
        /// Represents the failure of the data input to pass the validation.
        /// </summary>
        public const int ERROR = 0;
        /// <summary>
        /// Represents the success of the data input to pass the validation.
        /// </summary>
        public const int SUCCESS = 1;

        /// <summary>
        /// Repesents the status of the set of validation rules.
        /// </summary>
        public int Status { get; set; }

        /// <summary>
        /// This property is used to pass a message in the <c>ValidationRuleResult</c>
        /// if you need to do so.
        /// </summary>
        public string Message { get; set; }
        
        /// <summary>
        /// The <c>ValidationRuleResult</c> constructor.
        /// </summary>
        public ValidationRuleResult() { }

        /// <summary>
        /// The <c>ValidationRuleResult</c> constructor.
        /// </summary>
        /// <param name="status">The status to be set in the rule result.</param>
        public ValidationRuleResult(int status)
        {
            Status = status;
        }

        /// <summary>
        /// The <c>ValidationRuleResult</c> constructor.
        /// </summary>
        /// <param name="status">The status to be set in the rule result.</param>
        /// <param name="message">The message to be set in the rule result.</param>
        public ValidationRuleResult(int status, string message)
        {
            Status = status;
            Message = message;
        }
    }
}
