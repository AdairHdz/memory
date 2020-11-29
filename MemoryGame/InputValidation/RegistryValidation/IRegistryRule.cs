using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGame.InputValidation.RegistryValidation
{
    public interface IRegistryRule
    {
        ValidationRuleResult Validate(RegistryData data);
    }
}
