using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataAccess.Entities
{
    /// <summary>
    /// The <c>CardDeck</c> class
    /// It is an entity that stores data of a CardDeck in the database.
    /// </summary>
    public partial class CardDeck
    {
        /// <summary>
        /// Class constructor.
        /// </summary>
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public CardDeck()
        {
            Cards = new HashSet<Card>();
        }

        /// <summary>
        /// CarDeck identifier.
        /// </summary>
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int CardDeckId { get; set; }

        /// <summary>
        /// CardDeck Name.
        /// </summary>
        [Required]
        [StringLength(100)]
        public string Name { get; set; }

        /// <summary>
        /// Back image for each card.
        /// </summary>
        [Required]
        public string BackImage { get; set; }

        /// <summary>
        /// Total number of pairs in the CardDeck.
        /// </summary>
        public int NumberOfPairs { get; set; }

        /// <summary>
        /// Cards that make up the CardDeck.
        /// </summary>
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Card> Cards { get; set; }
    }
}
