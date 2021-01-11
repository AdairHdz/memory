using System.Collections.Generic;

namespace MemoryGameService.Utilities
{
    /// <summary>
    /// The <c>IShuffler</c> interface.
    /// It defines the methods that its implementers must address.
    /// </summary>
    /// <typeparam name="ShufflingCollection">The generic collection that you want to shuffle.</typeparam>
    public interface IShuffler<ShufflingCollection> where ShufflingCollection : class
    {
        /// <summary>
        /// Shiffles the given collection of objects.
        /// </summary>
        /// <param name="collectionToShuffle">The collection of objects to be shuffled.</param>
        void Shuffle(IList<ShufflingCollection> collectionToShuffle);
    }
}
