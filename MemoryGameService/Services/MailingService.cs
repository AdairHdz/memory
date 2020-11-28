using MemoryGameService.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Utilities;

namespace MemoryGameService.Services
{
    public partial class MemoryGameService : IMailingService
    {
        public void SendVerificationToken(string name, string emailAddress, string verificationToken)
        {
            MailTemplate mt = new MailTemplate();
            mt.SetReceiver(name, emailAddress);
            mt.SetMessage("Bienvenido",
                "Tu token de verificación de cuenta es: " + verificationToken);
            mt.Send();
        }
    }
}
