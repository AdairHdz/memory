using System;

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
