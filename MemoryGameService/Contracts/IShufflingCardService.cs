using MemoryGame.MemoryGameService.DataTransferObjects;
using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    [ServiceContract]
    public interface IShufflingCardService
    {
        [OperationContract]
        CardDTO[] ShuffleCards();
    }
}
