using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGame.InputValidation
{
    public abstract class ValidationRule
    {
        public ValidationRuleResult ValidationRuleResult { get; set; }

        public ValidationRule()
        {
            SetValidationRuleResult();
        }
        
        protected abstract void SetValidationRuleResult();
        public bool Validate()
        {
            if (ValidationRuleResult.Status == ValidationRuleResult.SUCCESS)
            {
                return true;
            }
            return false;
        }

    }
}
