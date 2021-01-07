using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGame.MemoryGameService.Faults;
using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    [ServiceContract]
    public interface IAccessibilityService
    {
        [FaultContract(typeof(DatabaseConnectionLostFault))]
        [OperationContract]
        bool IsVerified(string username);

        [FaultContract(typeof(DatabaseConnectionLostFault))]
        [OperationContract]
        bool ItsRegistered(string emailAddress);

        [FaultContract(typeof(NonExistentUserFault))]
        [FaultContract(typeof(DatabaseConnectionLostFault))]
        [OperationContract]       
        string GetUserEmailAddress(string username);

        [FaultContract(typeof(NonExistentUserFault))]
        [FaultContract(typeof(DatabaseConnectionLostFault))]
        [OperationContract]
        string GetUsername(string emailAddress);
        
        [FaultContract(typeof(NonExistentUserFault))]
        [FaultContract(typeof(DatabaseConnectionLostFault))]
        [OperationContract]
        PlayerCredentialsDTO GetPlayerCredentials(string username);
    }
}
