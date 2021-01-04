using System.Runtime.Serialization;

namespace MemoryGame.MemoryGameService.Faults
{
    [DataContract]
    public class NonExistentUserFault
    {
        [DataMember]
        public string Error { get; set; }
        [DataMember]
        public string Details { get; set; }
    }
}
