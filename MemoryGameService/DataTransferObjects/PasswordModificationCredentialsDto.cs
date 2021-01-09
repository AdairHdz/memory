using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

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
