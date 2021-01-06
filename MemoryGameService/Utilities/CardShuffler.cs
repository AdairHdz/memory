using MemoryGame.MemoryGameService.DataTransferObjects;
using System.Collections.Generic;

namespace MemoryGameService.Utilities
{
    public class CardShuffler
    {
        private IShuffler<CardDto> _shufflerAlgorithm;

        public CardShuffler()
        {
            _shufflerAlgorithm = new FisherYatesShuffler<CardDto>();
        }

        public void ShuffleCards(IList<CardDto> cardDeck)
        {
            _shufflerAlgorithm.Shuffle(cardDeck);
        }

    }
}
