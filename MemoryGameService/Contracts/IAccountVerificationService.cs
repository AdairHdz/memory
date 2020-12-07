using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    [ServiceContract]
    public interface IAccountVerificationService
    {
        [OperationContract]
        bool SetAccountAsVerified(string emailAddress);
        [OperationContract]
        bool AssignNewVerificationToken(string emailAddress, string verificationToken);
        [OperationContract]
        bool VerifyToken(string emailAddress, string verificationToken);
    }
}
