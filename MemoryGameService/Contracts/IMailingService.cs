using MemoryGame.MemoryGameService.DataTransferObjects;
using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    /// <summary>
    /// The <c>MailingService</c> service.
    /// Is used to send the verification token to the player through their email address.
    /// The only operation it contains is:
    /// <list type="bullet">
    /// <item>
    /// <term>SendVerificationToken</term>
    /// <description>Send the verification token by email.</description>
    /// </item>
    /// </list>
    /// </summary>
    [ServiceContract]
    public interface IMailingService
    {
        /// <summary>
        /// Send a user verification token to his registered email address.
        /// </summary>
        /// <param name="verificationTokenInfo">Contains the name of the player, email to which the token will 
        /// be sent, the token to be sent.</param>
        [OperationContract]
        void SendVerificationToken(TokenInfoDto verificationTokenInfo);
    }
}
