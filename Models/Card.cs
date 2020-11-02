using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class Card
    {
        [Key]
        public int CardId { get; set; }
        public string FrontImage { get; set; }
        public virtual CardDeck CardDeck { get; set; }
    }
}
