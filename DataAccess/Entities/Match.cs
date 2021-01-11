using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataAccess.Entities
{
    // <summary>
    /// The <c>Match</c> class
    /// It is an entity that stores data of a Match in the database.
    /// </summary>
    public partial class Match
    {
        /// <summary>
        /// Class constructor.
        /// </summary>
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Match()
        {
        }

        /// <summary>
        /// Match identifier.
        /// </summary>
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int MatchId { get; set; }

        /// <summary>
        /// Match creation date.
        /// </summary>
        public DateTime Date { get; set; }

        /// <summary>
        /// Associated CardDeck identifier.
        /// </summary>
        public int CardDeckId { get; set; }
        [ForeignKey("CardDeckId")]
        public virtual CardDeck CardDeck { get; set; }

        /// <summary>
        /// Winning player identifier.
        /// </summary>
        public string EmailAddress { get; set; }
        [ForeignKey("EmailAddress")]
        public virtual Player Winner { get; set; }
    }
}
