using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataAccess.Entities
{
    /// <summary>
    /// The <c>Account</c> class
    /// It is an entity that stores data of an Account in the database.
    /// </summary>
    public partial class Account
    {
        /// <summary>
        /// Class constructor.
        /// </summary>
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Account()
        {
        }

        /// <summary>
        /// Player's registered email.
        /// </summary>
        [Key]
        [ForeignKey("Player")]
        [StringLength(254)]
        public string EmailAddress { get; set; }

        /// <summary>
        /// Player's registered username.
        /// </summary>
        [Required]
        public string Username { get; set; }

        /// <summary>
        /// Player's registered password.
        /// </summary>
        [Required]
        [StringLength(254)]
        public string Password { get; set; }

        /// <summary>
        /// Salt with which the password has been encrypted.
        /// </summary>
        [StringLength(254)]
        public string Salt { get; set; }

        /// <summary>
        /// Verifies if the email of the account has been verified.
        /// </summary>
        public bool EmailWasVerified { get; set; }

        /// <summary>
        /// Player's activation token.
        /// </summary>
        [StringLength(50)]
        public string ActivationToken { get; set; }

        /// <summary>
        /// Player´s recovery token.
        /// </summary>
        [StringLength(50)]
        public string RecoveryToken { get; set; }

        /// <summary>
        /// Player associated with the account.
        /// </summary>
        public virtual Player Player { get; set; }
    }
}
