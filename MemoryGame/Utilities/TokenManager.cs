using MemoryGame.MemoryGameService.DataTransferObjects;

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

        public static void SendVerificationToken(VerificationTokenInfoDto verificationTokenInfo)
        {
            MemoryGameService.MailingServiceClient client =
                new MemoryGameService.MailingServiceClient();
            client.SendVerificationToken(verificationTokenInfo);
        }
    }
}
