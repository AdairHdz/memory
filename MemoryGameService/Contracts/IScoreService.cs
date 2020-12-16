using MemoryGame.MemoryGameService.DataTransferObjects;
using System.Collections.Generic;
using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    [ServiceContract]
    public interface IScoreService
    {
        [OperationContract]
        List<PlayerScoreDTO> GetPlayersWithBestScore(int numberOfPlayersToBeRetrieved);
    }
}
