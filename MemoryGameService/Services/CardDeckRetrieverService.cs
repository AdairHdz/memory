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
        public CardDeckDTO GetCardDeckAndCards(int cardDeckId)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            CardDeck cardDeck = unitOfWork.CardDecks.GetCardDeckAndCards(cardDeckId);

            _cardDeckDTO = CardDeckMapper.CreateDTO(cardDeck);

            IEnumerable<Card> cards = cardDeck.Cards;

            /**
             * Se añade dos veces la misma carta para formar el par.
             * Esto con la finalidad de evitar almacenar la misma carta 2 veces en
             * la base de datos
             */
            foreach(Card actualCard in cards)
            {
                CardDto cardDTO = CardMapper.CreateDTO(actualCard);
                _cardDeckDTO.Cards.Add(cardDTO);
                _cardDeckDTO.Cards.Add(cardDTO);
            }

            IList<CardDto> cardss = _cardDeckDTO.Cards;
            int lastIndex = cardss.Count() - 1;
            while (lastIndex > 0)
            {
                int randomIndex = GenerateRandomNumberBetweenRange(0, lastIndex);
                CardDto auxiliaryContainer = cardss[lastIndex];
                cardss[lastIndex] = cardss[randomIndex];
                cardss[randomIndex] = auxiliaryContainer;
                lastIndex--;
            }
            return _cardDeckDTO;
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
