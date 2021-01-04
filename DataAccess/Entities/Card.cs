namespace DataAccess.Entities
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    public partial class Card
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int CardId { get; set; }

        public int CardDeckId { get; set; }

        [Required]
        public string FrontImage { get; set; }

        public virtual CardDeck CardDecks { get; set; }
    }
}
