using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    /// <summary>
    /// The <c>TokenGenerator</c> service.
    /// Is used Used to generate verification tokens for players.
    /// The only operation it contains is:
    /// <list type="bullet">
    /// <item>
    /// <term>GenerateToken</term>
    /// <description>Generates a verification token.</description>
    /// </item>
    /// </list>
    /// </summary>
    [ServiceContract]
    public interface ITokenGenerator
    {
        /// <summary>
        /// Generates a token consisting of random letters and digits used to verify the player's identity.
        /// </summary>
        /// <param name="length">Length of characters that the verification token will have.</param>
        /// <returns>The generated token</returns>
        [OperationContract]
        string GenerateToken(int length);
    }
}
