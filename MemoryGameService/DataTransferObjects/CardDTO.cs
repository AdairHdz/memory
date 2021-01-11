using System.Runtime.Serialization;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    /// <summary>
    /// The <c>CardDto</c> class.
    /// It is used to map the information of a Card entity.
    /// </summary>
    [DataContract]
    public class CardDto
    {
        /// <summary>
        /// Card identifier.
        /// </summary>
        [DataMember]
        public int CardId { get; set; }
        /// <summary>
        /// CardDeck front image.
        /// </summary>
        [DataMember]
        public string FrontImage { get; set; }
    }
}
