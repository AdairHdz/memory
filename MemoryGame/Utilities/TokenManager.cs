using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGame.Utilities
{
    public static class TokenManager
    {
        public static string GenerateVerificationToken()
        {
            MemoryGameService.TokenGeneratorClient client =
                new MemoryGameService.TokenGeneratorClient();
            return client.GenerateToken(6);
        }

        public static void SendVerificationToken(string username, string emailAddress, string verificationToken)
        {
            MemoryGameService.MailingServiceClient client =
                new MemoryGameService.MailingServiceClient();
            client.SendVerificationToken(username, emailAddress, verificationToken);
        }
    }
}
