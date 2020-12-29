using MemoryGame.MemoryGameService.DataTransferObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGameService.Contracts
{
    [ServiceContract(CallbackContract = typeof(IMatchDiscoveryServiceCallback))]
    public interface IMatchDiscoveryService
    {
        [OperationContract(IsOneWay = true)]
        void DiscoverActiveMatches();
        [OperationContract]
        bool CanJoin(GameMatchConfigDto gameMatchDto);
    }
    [ServiceContract]
    public interface IMatchDiscoveryServiceCallback
    {
        [OperationContract(IsOneWay = true)]
        void ShowActiveMatches(IList<GameMatchConfigDto> matches);
    }
}
