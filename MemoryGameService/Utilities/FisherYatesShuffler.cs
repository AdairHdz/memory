using System;
using System.Collections.Generic;

namespace MemoryGameService.Utilities
{
    public class FisherYatesShuffler<ShufflingCollection> : IShuffler<ShufflingCollection> where ShufflingCollection : class
    {
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
