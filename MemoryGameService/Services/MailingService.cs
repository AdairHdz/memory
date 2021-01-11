using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;
using MemoryGameService.Utilities;

namespace MemoryGameService.Services
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
    public partial class MemoryGameService : IMailingService
    {
        /// <summary>
        /// Send a user verification token to his registered email address.
        /// </summary>
        /// <param name="verificationTokenInfo">Contains the name of the player, email to which the token will 
        /// be sent, the token to be sent.</param>
        public void SendVerificationToken(VerificationTokenInfoDto verificationTokenInfo)
        {
            string name = verificationTokenInfo.Name;
            string emailAddress = verificationTokenInfo.EmailAddress;
            string verificationToken = verificationTokenInfo.VerificationToken;
            MailTemplate mt = new MailTemplate();
            mt.SetReceiver(name, emailAddress);
            mt.SetMessage("Bienvenido",
                "Tu token de verificación de cuenta es: " + verificationToken);
            mt.Send();
        }
    }
}
