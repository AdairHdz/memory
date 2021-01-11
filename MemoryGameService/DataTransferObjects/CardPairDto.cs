using System.Runtime.Serialization;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    [DataContract]
    public class CardPairDto
    {
        [DataMember]
        public int IndexOfCard1 { get; set; }
        [DataMember]
        public int IndexOfCard2 { get; set; }
        [DataMember]
        public bool BothCardsAreEqual { get; set; }
    }
}
