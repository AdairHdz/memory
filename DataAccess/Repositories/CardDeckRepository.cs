﻿using DataAccess.Entities;
using System.Data.Entity;
using System.Linq;

namespace DataAccess.Repositories
{
    public class CardDeckRepository : Repository<CardDeck>, ICardDeckRepository
    {

        public MemoryGameContext MemoryGameContext
        {
            get { return _context as MemoryGameContext; }
        }

        public CardDeckRepository(DbContext context) : base(context)
        {
        }

        public CardDeck GetCardDeckAndCards(int cardDeckId)
        {
            CardDeck cardDeck = MemoryGameContext.CardDecks.Include("Cards")
                .First();
            return cardDeck;
        }

    }
}
