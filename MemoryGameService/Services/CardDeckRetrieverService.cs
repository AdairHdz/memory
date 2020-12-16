using DataAccess;
using DataAccess.Entities;
using DataAccess.Units_of_work;
using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;
using MemoryGameService.DataTransferObjectMappers;
using System;
using System.Collections.Generic;
using System.Linq;

namespace MemoryGameService.Services
{
    public partial class MemoryGameService : ICardDeckRetrieverService
    {
        private CardDeckDTO _cardDeckDTO;
        private IEnumerable<Card> _cards;
        public CardDeckDTO GetCardDeckAndCards(int cardDeckId)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            CardDeck cardDeck = unitOfWork.CardDecks.GetCardDeckAndCards(cardDeckId);

            _cardDeckDTO = CardDeckMapper.CreateDTO(cardDeck);

            _cards = cardDeck.Cards;

            /**
             * This code is adding the same set of cards Twice.
             * This is becausa this way I don't need to store each pair of cards
             * in the database (it would be a waste of storage)
             */
            PopulateCardDeckDtoWithCards();
            PopulateCardDeckDtoWithCards();

            ShuffleCards();

            return _cardDeckDTO;
        }

        private void PopulateCardDeckDtoWithCards()
        {
            foreach (Card actualCard in _cards)
            {
                CardDto cardDTO = CardMapper.CreateDTO(actualCard);
                _cardDeckDTO.Cards.Add(cardDTO);
            }
        }

        private void ShuffleCards()
        {
            IList<CardDto> cards = _cardDeckDTO.Cards;
            int lastIndex = cards.Count() - 1;
            while (lastIndex > 0)
            {
                int randomIndex = GenerateRandomNumberBetweenRange(0, lastIndex);
                CardDto auxiliaryContainer = cards[lastIndex];
                cards[lastIndex] = cards[randomIndex];
                cards[randomIndex] = auxiliaryContainer;
                lastIndex--;
            }
        }

        private int GenerateRandomNumberBetweenRange(int minimum, int maximum)
        {
            Random randomNumberGenerator = new Random();
            int randomNumber = randomNumberGenerator.Next(minimum, maximum);
            return randomNumber;
        }

    }
}
