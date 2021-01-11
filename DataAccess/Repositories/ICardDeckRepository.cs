using DataAccess.Entities;

namespace DataAccess.Repositories
{
    /// <summary>
    /// The <c>ICardDeckRepository</c> interface.
    /// Defines the operations that the implementer of this interface will need to address.
    /// These operations must work on the <c>CardDeck</c> entity.
    /// </summary>
    public interface ICardDeckRepository : IRepository<CardDeck>
    {
        /// <summary>
        /// Retrieves the <c>CardDeck</c> entity with the specified cardDeckId and its associated <c>Card</c> entities.
        /// </summary>
        /// <param name="cardDeckId">The primary key of the card deck that you want to get.</param>
        /// <returns>The <c>CardDeck</c> entity with the specified cardDeckId and its associated <c>Card</c> entities</returns>
        CardDeck GetCardDeckAndCards(int cardDeckId);
    }
}
