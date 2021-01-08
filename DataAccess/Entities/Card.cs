namespace DataAccess.Entities
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    public partial class Card
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }

        public virtual CardDeck CardDeck { get; set; }

        [Required]
        public string FrontImage { get; set; }        
    }
}
