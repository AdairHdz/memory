using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;
using MemoryGameService.Utilities;

namespace MemoryGameService.Services
{
    public partial class MemoryGameService : IMailingService
    {
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
