using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGame.MemoryGameService.Faults;
using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    [ServiceContract]
    public interface IAccessibilityService
    {
        [OperationContract]
        bool HasAccessRights(PlayerCredentialsDTO playerCredentialsDTO);
        [OperationContract]
        bool IsVerified(string username);
        [OperationContract]
        bool ItsRegistered(string emailAddress);
        [OperationContract]       
        string GetUserEmailAddress(string username);
        [OperationContract]
        string GetUsername(string emailAddress);
        
        [FaultContract(typeof(NonExistentUserFault))]
        [FaultContract(typeof(DatabaseConnectionLostFault))]
        [OperationContract]
        PlayerCredentialsDTO GetPlayerCredentials(string username);
    }
}
