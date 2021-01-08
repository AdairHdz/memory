using MemoryGame.MemoryGameService.DataTransferObjects;
using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    [ServiceContract]
    public interface IPlayerRegistryService
    {        
        [OperationContract]
        bool RegisterNewPlayer(PlayerDTO playerDTO, string salt);
        [OperationContract]
        bool EmailAddressIsAvailable(string emailAddress);
        [OperationContract]
        bool UserNameIsAvailable(string username);
    }
}
