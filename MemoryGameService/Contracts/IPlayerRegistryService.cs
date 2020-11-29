using MemoryGame.MemoryGameService.DataTransferObjects;
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
        bool RegisterNewPlayer(PlayerDTO playerDTO);
        [OperationContract]
        bool EmailAddressIsAvailable(string emailAddress);
        [OperationContract]
        bool UserNameIsAvailable(string username);
    }
}
