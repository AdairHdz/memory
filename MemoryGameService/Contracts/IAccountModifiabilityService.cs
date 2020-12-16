using MemoryGame.MemoryGameService.DataTransferObjects;
using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    [ServiceContract]
    public interface IAccountModifiabilityService
    {
        [OperationContract]
        bool SetNewPassword(PlayerCredentialsDTO playerCredentialsDTO);
        [OperationContract]
        bool ChangeUsername(PlayerCredentialsDTO playerCredentialsDTO);
    }
}
