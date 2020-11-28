using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGameService.Contracts
{
    [ServiceContract]
    public interface IAccountModifiabilityService
    {
        [OperationContract]
        bool SetNewPassword(string emailAddress, string password);
        [OperationContract]
        bool ChangeUsername(string emailAddress, string newUsername);
    }
}
