using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    [DataContract]
    public class CardPairDto
    {
        [DataMember]
        public int IndexOfCard1 { get; set; }
        [DataMember]
        public int IndexOfCard2 { get; set; }
        [DataMember]
        public bool BothCardsAreEqual { get; set; }
    }
}
