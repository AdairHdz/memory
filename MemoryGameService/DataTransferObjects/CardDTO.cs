using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    [DataContract]
    public class CardDTO
    {
        [DataMember]
        public int CardId { get; set; }
        public string FrontImage { get; set; }
    }
}
