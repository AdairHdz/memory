using System.Runtime.Serialization;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    /// <summary>
    /// The <c>CardDeckInfoDto</c> class.
    /// It is used to map the id and the name of a CarDeck entity.
    /// </summary>
    [DataContract]
    public class CardDeckInfoDto
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
        public string CardDeckName { get; set; }
    }
}
