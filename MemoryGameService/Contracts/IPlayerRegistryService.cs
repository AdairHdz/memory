using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGame.MemoryGameService.Faults;
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
        [FaultContract(typeof(EndpointNotFoundFault))]
        bool RegisterNewPlayer(PlayerDTO playerDTO);
        [OperationContract]
        bool EmailAddressIsAvailable(string emailAddress);
        [OperationContract]
        bool UserNameIsAvailable(string username);
    }
}
