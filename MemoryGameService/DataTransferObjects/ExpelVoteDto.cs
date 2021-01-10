using System.Runtime.Serialization;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    [DataContract]
    public class ExpelVoteDto
    {
        [DataMember]
        public string Host { get; set; }
        [DataMember]
        public string UsernameOfExpelPlayer { get; set; }
        [DataMember]
        public string UsernameOfVoterPlayer { get; set; }
    }
}
