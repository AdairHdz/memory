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
        [OperationContract]
        bool EmailAddressIsAvailable(string emailAddress);
        [OperationContract]
        bool UserNameIsAvailable(string username);
        [OperationContract]
        bool VerifyToken(string emailAddress, string verificationToken);
        [OperationContract]
        bool SetAccountAsVerified(string emailAddress);
        [OperationContract]
        bool AssignNewVerificationToken(string emailAddress, string verificationToken);
    }
}
