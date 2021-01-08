using MemoryGame.MemoryGameService.DataTransferObjects;
using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    [ServiceContract]
    public interface IMailingService
    {
        [OperationContract]
        void SendVerificationToken(VerificationTokenInfoDto verificationTokenInfo);
    }
}
