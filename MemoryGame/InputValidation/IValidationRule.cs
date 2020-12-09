using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGame.InputValidation
{
    public interface IValidationRule
    {
        bool Validate();
        ValidationRuleResult GetValidationRuleResult();
    }
}
