using System.ServiceModel;

namespace MemoryGameService
{
    [ServiceContract]
    public interface IAccessibilityService
    {
        [OperationContract]
        bool HasAccessRights(string username, string password);
        [OperationContract]
        bool IsVerified(string username);
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
        [OperationContract]
        string GetUserEmailAddress(string username);
        [OperationContract]
        string GetUsername(string emailAddress);
        [OperationContract]
        bool ItsRegistered(string emailAddress);
        [OperationContract]
        bool SetNewPassword(string emailAddress, string password);
    }
}
