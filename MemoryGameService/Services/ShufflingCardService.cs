using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;
using System;

namespace MemoryGameService.Services
{
    public partial class MemoryGameService : IShufflingCardService
    {
        private CardDTO[] _cards = new CardDTO[10];
        private int _lastIndex;
        public CardDTO[] ShuffleCards()
        {
            for (int i = 0; i < 10; i++)
            {
                CardDTO createdCard = new CardDTO()
                {
                    CardId = i
                };

                _cards[i] = createdCard;
            }

            _lastIndex = _cards.Length - 1;
            while (_lastIndex > 0)
            {
                int randomIndex = GenerateRandomNumberBetweenRange(0, _lastIndex);
                CardDTO auxiliaryContainer = _cards[_lastIndex];
                _cards[_lastIndex] = _cards[randomIndex];
                _cards[randomIndex] = auxiliaryContainer;
                _lastIndex--;
            }
            return _cards;
        }

        private int GenerateRandomNumberBetweenRange(int minimum, int maximum)
        {
            Random randomNumberGenerator = new Random();
            int randomNumber = randomNumberGenerator.Next(minimum, maximum);
            return randomNumber;
        }






    }
}
