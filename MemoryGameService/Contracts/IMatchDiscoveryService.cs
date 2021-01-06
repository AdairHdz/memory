using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGame.MemoryGameService.Faults;
using System.Collections.Generic;
using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    [ServiceContract]
    public interface IMatchDiscoveryService
    {
        [OperationContract]
        IList<GameMatchDto> GetActiveMatches();
        
        [FaultContract(typeof(MatchAccessDeniedFault))]
        [OperationContract]
        bool CanJoin(string matchHost);
    }
}
