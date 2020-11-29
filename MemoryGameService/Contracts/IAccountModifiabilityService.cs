using MemoryGame.MemoryGameService.DataTransferObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

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
