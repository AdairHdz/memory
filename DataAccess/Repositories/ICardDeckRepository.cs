using DataAccess.Entities;

namespace DataAccess.Repositories
{
    public interface ICardDeckRepository : IRepository<CardDeck>
    {
        CardDeck GetCardDeckAndCards(int cardDeckId);
    }
}
