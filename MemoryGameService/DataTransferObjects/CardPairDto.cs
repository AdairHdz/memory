using System.Runtime.Serialization;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    /// <summary>
    /// The <c>CardPairDto</c> class.
    /// It is used to stores a pair of cards uncovered by a player in a match.
    /// </summary>
    [DataContract]
    public class CardPairDto
    {
        /// <summary>
        /// Index of the first card uncovered.
        /// </summary>
        [DataMember]
        public int IndexOfCard1 { get; set; }
        /// <summary>
        /// Index of the second card uncovered.
        /// </summary>
        [DataMember]
        public int IndexOfCard2 { get; set; }
        /// <summary>
        /// Atribute to verify if the two cards uncovered are equal.
        /// </summary>
        [DataMember]
        public bool BothCardsAreEqual { get; set; }
    }
}
