using System;
using System.Collections.Generic;

namespace MemoryGameService.Utilities
{
    /// <summary>
    /// The <c>FisherYatesShuffler</c> class.
    /// Implements the Fisher-Yates shuffle algorithm.
    /// </summary>
    /// <typeparam name="ShufflingCollection">The generic collection that you want to shuffle.</typeparam>
    public class FisherYatesShuffler<ShufflingCollection> : IShuffler<ShufflingCollection> where ShufflingCollection : class
    {
        /// <summary>
        /// Shiffles the given collection of objects.
        /// </summary>
        /// <param name="collectionToShuffle">The collection of objects to be shuffled</param>
        public void Shuffle(IList<ShufflingCollection> collectionToShuffle)
        {
            int lastIndex = collectionToShuffle.Count - 1;
            while (lastIndex > 0)
            {
                int randomIndex = GenerateRandomNumberBetweenRange(0, lastIndex);
                var auxiliaryContainer = collectionToShuffle[lastIndex];
                collectionToShuffle[lastIndex] = collectionToShuffle[randomIndex];
                collectionToShuffle[randomIndex] = auxiliaryContainer;
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
