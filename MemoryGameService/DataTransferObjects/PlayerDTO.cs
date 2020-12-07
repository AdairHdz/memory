using System.Runtime.Serialization;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    [DataContract]
    public class PlayerDTO
    {
        [DataMember]
        public string Username { get; set; }
        [DataMember]
        public string EmailAddress { get; set; }
        [DataMember]
        public string Password { get; set; }
        [DataMember]
        public string VerificationToken { get; set; }
    }
}
