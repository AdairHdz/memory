using System.Runtime.Serialization;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    [DataContract]
    public class MatchRequestDto
    {
        [DataMember]
        public string Host { get; set; }
        [DataMember]
        public string Username { get; set; }
    }
}
