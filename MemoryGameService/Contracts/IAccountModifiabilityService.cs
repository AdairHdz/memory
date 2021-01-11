using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGame.MemoryGameService.Faults;
using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    [ServiceContract]
    public interface IAccountModifiabilityService
    {
        [OperationContract]
        bool SetNewPassword(PasswordModificationCredentialsDto passwordModificationCredentials);

        [OperationContract]
        bool ChangeUsername(string emailAddress, string newUsername);
    }
}
