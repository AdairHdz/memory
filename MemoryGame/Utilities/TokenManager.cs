using MemoryGame.MemoryGameService.DataTransferObjects;

namespace MemoryGame.Utilities
{
    /// <summary>
    /// The <c>TokenManager</c> class.
    /// This class provides a simple way to generate and send tokens
    /// for security verification purposes.
    /// </summary>
    public static class TokenManager
    {
        /// <summary>
        /// Generates a random token to be sent to the  user.
        /// This token is a string of 6 characters.
        /// </summary>
        /// <returns></returns>
        public static string GenerateToken()
        {
            MemoryGameService.TokenGeneratorClient client =
                new MemoryGameService.TokenGeneratorClient();
            return client.GenerateToken(6);
        }

        /// <summary>
        /// Sends the token to the specified user.
        /// </summary>
        /// <param name="tokenInfo">
        /// The <c>TokenInfo</c> object which contains the
        /// necessary info to send the token.
        /// </param>
        public static void SendToken(TokenInfoDto tokenInfo)
        {
            MemoryGameService.MailingServiceClient client =
                new MemoryGameService.MailingServiceClient();
            client.SendVerificationToken(tokenInfo);
        }
    }
}
