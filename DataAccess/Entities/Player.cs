using System.ComponentModel.DataAnnotations;

namespace DataAccess.Entities
{
    // <summary>
    /// The <c>Player</c> class
    /// It is an entity that stores data of a Player in the database.
    /// </summary>
    public partial class Player
    {
        /// <summary>
        /// Class constructor.
        /// </summary>
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Player() { }

        /// <summary>
        /// Player's email.
        /// </summary>
        [Key]        
        public string EmailAddress { get; set; }  
        /// <summary>
        /// Player's score.
        /// </summary>
        public int Score { get; set; }
    }
}
