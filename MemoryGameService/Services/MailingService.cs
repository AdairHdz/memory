using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGame.MemoryGameService.Faults;
using MemoryGameService.Contracts;
using MemoryGameService.Utilities;
using System.Net.Sockets;
using System.ServiceModel;

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
        public void SendVerificationToken(TokenInfoDto verificationTokenInfo)
        {
            string name = verificationTokenInfo.Name;
            string emailAddress = verificationTokenInfo.EmailAddress;
            string verificationToken = verificationTokenInfo.Token;
            string subjectOfTheMessage = verificationTokenInfo.Subject;
            string bodyOfTheMessage = verificationTokenInfo.Body;
            MailTemplate mt = new MailTemplate();
            mt.SetReceiver(name, emailAddress);
            mt.SetMessage(subjectOfTheMessage, bodyOfTheMessage + ": " + verificationToken);
            try
            {
                mt.Send();
            }
            catch (SocketException socketException)
            {
                _logger.Fatal("MailingService.cs: An error related to the socket occured while " +
                    "trying to send the email. Check the credentials for " +
                    "sending the email. Method Send, line 40", socketException);
            }
            catch (ProtocolException protocolException)
            {
                _logger.Fatal("MailingService.cs: An error related with the protocol occured while " +
                    "trying to send the email. Check that you are using a valid " +
                    "protocol for sending the emails.", protocolException);
            }

        }
    }
}
