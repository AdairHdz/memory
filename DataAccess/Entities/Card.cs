using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataAccess.Entities
{
    /// <summary>
    /// The <c>Card</c> class
    /// It is an entity that stores data of a Card in the database.
    /// </summary>
    public partial class Card
    {
        /// <summary>
        /// Card identifier.
        /// </summary>
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int CardId { get; set; }

        /// <summary>
        /// CarDeck identifier to which it is associated.
        /// </summary>
        public int CardDeckId { get; set; }

        /// <summary>
        /// CarDeck to which it is associated.
        /// </summary>
        [ForeignKey("CardDeckId")]
        public virtual CardDeck CardDeck { get; set; }

        /// <summary>
        /// Front image of the card.
        /// </summary>
        [Required]
        public string FrontImage { get; set; }        
    }
}
