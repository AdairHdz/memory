using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    [DataContract]
    public class CardDeckDTO
    {
        [DataMember]
        public int CardDeckId { get; set; }
        [DataMember]
        public string Name { get; set; }
        [DataMember]
        public string BackImage { get; set; }
        [DataMember]
        public int NumberOfPairs { get; set; }
        [DataMember]
        public IList<CardDTO> Cards { get; set; }
    }
}
