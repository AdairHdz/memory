using MemoryGame.MemoryGameService.DataTransferObjects;
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
    }
}
