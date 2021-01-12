using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;
using MemoryGameService.Utilities;
using System.Net.Sockets;
using System.ServiceModel;

namespace MemoryGameService.Services
{
    /// <inheritdoc/>
    public partial class MemoryGameService : IMailingService
    {
        /// <inheritdoc/>
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
