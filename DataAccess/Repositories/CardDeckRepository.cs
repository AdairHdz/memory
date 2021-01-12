using DataAccess.Entities;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;

namespace DataAccess.Repositories
{
    /// <summary>
    /// The <c>CardDeckRepository</c> class.
    /// Adds specific operations that you probably would need to execute on the <c>CardDeck</c> entity.
    /// </summary>
    public class CardDeckRepository : Repository<CardDeck>, ICardDeckRepository
    {
        /// <summary>
        /// The DbContext that the <c>CardDeckRepository</c> will work with.
        /// It is derived from the base class: <c>Repository</c>
        /// </summary>
        public MemoryGameContext MemoryGameContext
        {
            get 
            {
                return _context as MemoryGameContext;
            }
        }

        /// <summary>
        /// The <c>CardDeckRepository</c> constructor.
        /// </summary>
        /// <param name="context">The DbContext that the <c>CardDeckRepository</c> will work with.</param>
        public CardDeckRepository(DbContext context) : base(context) { }

        /// <inheritdoc/>
        public CardDeck GetCardDeckAndCards(int cardDeckId)
        {
            IEnumerable<CardDeck> cardDecksRetrieved = MemoryGameContext.CardDecks.Include("Cards")
                .Where(cardDeck => cardDeck.CardDeckId == cardDeckId);
            if (cardDecksRetrieved.Any())
            {
                CardDeck cardDeckRetrievedFromDatabase = cardDecksRetrieved.First();
                return cardDeckRetrievedFromDatabase;
            }
            return null;            
        }

    }
}
