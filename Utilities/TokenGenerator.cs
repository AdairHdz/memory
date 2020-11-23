using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Utilities
{
    public static class TokenGenerator
    {        
        public static string GenerateToken(int tokenLength)
        {
            string token = Guid.NewGuid().ToString();
            token = token.Replace("-", "");
            token = token.Substring(0, tokenLength);
            return token;
        }
    }
}
