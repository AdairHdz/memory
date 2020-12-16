using System.Collections.Generic;
using System.Runtime.Serialization;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    [DataContract]
    public class CardDeckDTO
    {
        [DataMember]
        public int CardDeckId { get; set; }
        [DataMember]
        public string Name { get; set; }
        [DataMember]
        public string BackImage { get; set; }
        [DataMember]
        public int NumberOfPairs { get; set; }
        [DataMember]
        public IList<CardDto> Cards { get; set; }
    }
}
