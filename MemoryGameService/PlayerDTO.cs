using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGameService
{
    [DataContract(Namespace = "MemoryGameService")]
    public class PlayerDTO
    {
        [DataMember]
        public string EmailAddress { get; set; }
        [DataMember]
        public string UserName { get; set; }
        [DataMember]
        public string Password { get; set; }
        [DataMember]
        public string ActivationToken { get; set; }
    }
}
