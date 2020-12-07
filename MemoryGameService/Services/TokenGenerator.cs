using MemoryGameService.Contracts;
using System;

namespace MemoryGameService.Services
{
    public partial class MemoryGameService : ITokenGenerator
    {
        public string GenerateToken(int length)
        {
            string token = Guid.NewGuid().ToString();
            token = token.Replace("-", "");
            token = token.Substring(0, length);
            return token;
        }
    }
}
