using System.ComponentModel.DataAnnotations;

namespace DataAccess.Models
{
    public class Card
    {
        [Key]
        public int CardId { get; set; }
        public string FrontImage { get; set; }
        public virtual CardDeck CardDeck { get; set; }
    }
}
