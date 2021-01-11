using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataAccess.Entities
{
    public partial class Card
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int CardId { get; set; }
        
        public int CardDeckId { get; set; }
        [ForeignKey("CardDeckId")]
        public virtual CardDeck CardDeck { get; set; }

        [Required]
        public string FrontImage { get; set; }        
    }
}
