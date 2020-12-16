using System.Runtime.Serialization;

namespace MemoryGame.MemoryGameService.Faults
{
    [DataContract]
    public class EndpointNotFoundFault
    {
        [DataMember]
        public string Error { get; set; }
        [DataMember]
        public string Details { get; set; }
    }
}
