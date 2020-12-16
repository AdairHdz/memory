using System.Runtime.Serialization;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    [DataContract]
    public class CardDto
    {
        [DataMember]
        public int CardId { get; set; }
        [DataMember]
        public string FrontImage { get; set; }
    }
}
