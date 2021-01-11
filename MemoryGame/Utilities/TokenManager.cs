using MemoryGame.MemoryGameService.DataTransferObjects;

namespace MemoryGame.Utilities
{
    public static class TokenManager
    {
        public static string GenerateToken()
        {
            MemoryGameService.TokenGeneratorClient client =
                new MemoryGameService.TokenGeneratorClient();
            return client.GenerateToken(6);
        }

        public static void SendToken(TokenInfoDto tokenInfo)
        {
            MemoryGameService.MailingServiceClient client =
                new MemoryGameService.MailingServiceClient();
            client.SendVerificationToken(tokenInfo);
        }
    }
}
