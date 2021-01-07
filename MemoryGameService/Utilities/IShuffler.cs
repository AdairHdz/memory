using System.Collections.Generic;

namespace MemoryGameService.Utilities
{
    public interface IShuffler<ShufflingCollection> where ShufflingCollection : class
    {
        void Shuffle(IList<ShufflingCollection> collectionToShuffle);
    }
}
