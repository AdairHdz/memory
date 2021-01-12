using System.Collections.Generic;
using System.Runtime.Serialization;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    /// <summary>
    /// The <c>CardDeckDto</c> class.
    /// It is used to map the information of a CardDeck entity.
    /// </summary>
    [DataContract]
    public class CardDeckDto
    {
        /// <summary>
        /// CardDeck identifier.
        /// </summary>
        [DataMember]
        public int CardDeckId { get; set; }
        /// <summary>
        /// CardDeck name.
        /// </summary>
        [DataMember]
        public string Name { get; set; }
        /// <summary>
        /// Back image of each card in the CardDeck.
        /// </summary>
        [DataMember]
        public string BackImage { get; set; }
        /// <summary>
        /// Total number of pairs that can be formed with the CarDeck.
        /// </summary>
        [DataMember]
        public int NumberOfPairs { get; set; }
        /// <summary>
        /// List of cards contained in the CarDeck.
        /// </summary>
        [DataMember]
        public IList<CardDto> Cards { get; set; }
    }
}
