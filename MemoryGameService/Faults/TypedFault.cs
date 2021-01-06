using System.Runtime.Serialization;

namespace MemoryGame.MemoryGameService.Faults
{
    [DataContract]
    public abstract class TypedFault
    {
        [DataMember]
        public string Error { get; set; }
        [DataMember]
        public string Details { get; set; }

        public TypedFault() { }

        public TypedFault(string error, string details)
        {
            Error = error;
            Details = details;
        }
    }
}
