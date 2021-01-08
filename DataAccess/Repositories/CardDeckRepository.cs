using DataAccess.Entities;
using System.Collections;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;

namespace DataAccess.Repositories
{
    public class CardDeckRepository : Repository<CardDeck>, ICardDeckRepository
    {
        public MemoryGameContext MemoryGameContext
        {
            get 
            {
                return _context as MemoryGameContext;
            }
        }

        public CardDeckRepository(DbContext context) : base(context) { }

        public CardDeck GetCardDeckAndCards(int cardDeckId)
        {
            IEnumerable<CardDeck> cardDecksRetrieved = MemoryGameContext.CardDecks.Include("Cards")
                .Where(cardDeck => cardDeck.Id == cardDeckId);

            if (cardDecksRetrieved.Any())
            {
                CardDeck cardDeckRetrievedFromDatabase = cardDecksRetrieved.First();
                return cardDeckRetrievedFromDatabase;
            }
            return null;            
        }

    }
}
