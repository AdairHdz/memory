using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    [ServiceContract]
    public interface IAccessibilityService
    {
        [OperationContract]
        bool HasAccessRights(string username, string password);
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
