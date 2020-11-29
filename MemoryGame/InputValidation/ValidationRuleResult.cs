using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGame.InputValidation
{
    public class ValidationRuleResult
    {
        public const int ERROR = 0;
        public const int SUCCESS = 1;

        public int Status { get; set; }
        public string Message { get; set; }
        

        public ValidationRuleResult()
        {

        }

        public ValidationRuleResult(int status)
        {
            Status = status;
        }

        public ValidationRuleResult(int status, string message)
        {
            Status = status;
            Message = message;
        }
    }
}
