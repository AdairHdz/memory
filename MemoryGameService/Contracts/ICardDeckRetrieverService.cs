using MemoryGame.MemoryGameService.DataTransferObjects;
using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    [ServiceContract]
    public interface ICardDeckRetrieverService
    {
        [OperationContract]
        CardDeckDTO GetCardDeckAndCards(int cardDeckId);
    }
}
