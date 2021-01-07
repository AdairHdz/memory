using System.Runtime.Serialization;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    [DataContract]
    public class CardDeckInfoDto
    {
        [DataMember]
        public int CardDeckId { get; set; }
        [DataMember]
        public string CardDeckName { get; set; }
    }
}
