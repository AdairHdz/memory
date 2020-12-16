namespace DataAccess.Entities
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    public partial class Card
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int CardId { get; set; }

        public int CardDeckId { get; set; }

        [Required]
        public string FrontImage { get; set; }

        public virtual CardDeck CardDecks { get; set; }
    }
}
