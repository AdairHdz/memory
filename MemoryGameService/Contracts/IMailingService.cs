using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    [ServiceContract]
    public interface IMailingService
    {
        [OperationContract]
        void SendVerificationToken(string name, string emailAddress, string verificationToken);
    }
}
