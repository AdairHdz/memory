using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGameService.Contracts
{
    public interface IAccountVerificationService
    {
        [OperationContract]
        bool SetAccountAsVerified(string emailAddress);
        [OperationContract]
        bool AssignNewVerificationToken(string emailAddress, string verificationToken);
        [OperationContract]
        bool VerifyToken(string emailAddress, string verificationToken);
    }
}
