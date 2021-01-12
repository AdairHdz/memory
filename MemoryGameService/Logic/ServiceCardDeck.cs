using System.Collections.Generic;

namespace MemoryGameService.Logic
{
    /// <summary>
    /// The <c>ServiceCardDeck</c> class.
    /// It is used to map the information of a CardDeck entity.
    /// </summary>
    public class ServiceCardDeck
    {
        /// <summary>
        /// CardDeck identifier.
        /// </summary>
        public int CardDeckId { get; set; }
        /// <summary>
        /// CardDeck name.
        /// </summary>
        public string Name { get; set; }
        /// <summary>
        /// Back image of each card in the CardDeck.
        /// </summary>
        public string BackImage { get; set; }
        /// <summary>
        /// Total number of pairs that can be formed with the CarDeck.
        /// </summary>
        public int NumberOfPairs { get; set; }
        /// <summary>
        /// List of cards contained in the CarDeck.
        /// </summary>
        public IList<ServiceCard> Cards { get; set; }
    }
}
