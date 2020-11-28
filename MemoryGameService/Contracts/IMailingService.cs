using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGameService.Contracts
{
    [ServiceContract]
    public interface IMailingService
    {
        [OperationContract]
        void SendVerificationToken(string name, string emailAddress, string verificationToken);
    }
}
