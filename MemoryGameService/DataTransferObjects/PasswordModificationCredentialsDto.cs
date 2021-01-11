using System.Runtime.Serialization;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    [DataContract]
    public class PasswordModificationCredentialsDto
    {
        [DataMember]
        public string EmailAddress { get; set; }
        [DataMember]
        public string NewPassword { get; set; }
        [DataMember]
        public string Salt { get; set; }
    }
}
