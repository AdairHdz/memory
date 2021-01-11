using MemoryGame.MemoryGameService.DataTransferObjects;
using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    [ServiceContract]
    public interface IMatchCreationService
    {
        [OperationContract(IsOneWay = true)]
        void CreateNewMatch(MatchDto gameMatchDto);
    }
}
