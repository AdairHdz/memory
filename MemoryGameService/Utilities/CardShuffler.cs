using MemoryGame.MemoryGameService.DataTransferObjects;
using System.Collections.Generic;

namespace MemoryGameService.Utilities
{
    /// <summary>
    /// The <c>CardShuffler</c> class.
    /// This class is used to shuffle the cards before they are set to a match.
    /// </summary>
    public class CardShuffler
    {
        private IShuffler<CardDto> _shufflerAlgorithm;

        /// <summary>
        /// The <c>CardShuffler</c> constructor.
        /// </summary>
        public CardShuffler()
        {
            _shufflerAlgorithm = new FisherYatesShuffler<CardDto>();
        }

        /// <summary>
        /// Shuffles the cards that are contained in the <c>cardDeck.</c>
        /// </summary>
        /// <param name="cardDeck">The card deck that contains the cards that you want to shuffle.</param>
        public void ShuffleCards(IList<CardDto> cardDeck)
        {
            _shufflerAlgorithm.Shuffle(cardDeck);
        }

    }
}
