using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGameService.Contracts
{
    [ServiceContract]
    public interface IPlayerRegistryService
    {
        [OperationContract]
        bool RegisterNewPlayer(string emailAddress, string username, string password, string verificationToken);
        [OperationContract]
        bool EmailAddressIsAvailable(string emailAddress);
        [OperationContract]
        bool UserNameIsAvailable(string username);
    }
}
