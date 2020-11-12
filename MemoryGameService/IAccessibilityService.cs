using System.ServiceModel;

namespace MemoryGameService
{
    [ServiceContract]
    public interface IAccessibilityService
    {
        [OperationContract]
        bool HasAccessRights(string username, string password);
        [OperationContract]
        bool RegisterNewPlayer(string emailAddress, string username, string password, string verificationToken);
    }
}
