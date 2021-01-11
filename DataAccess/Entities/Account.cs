using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataAccess.Entities
{
    public partial class Account
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Account()
        {
        }

        [Key]
        [ForeignKey("Player")]
        [StringLength(254)]
        public string EmailAddress { get; set; }

        [Required]
        public string Username { get; set; }

        [Required]
        [StringLength(254)]
        public string Password { get; set; }
        
        [StringLength(254)]
        public string Salt { get; set; }

        public bool EmailWasVerified { get; set; }

        [StringLength(50)]
        public string ActivationToken { get; set; }

        [StringLength(50)]
        public string RecoveryToken { get; set; }

        public virtual Player Player { get; set; }
    }
}
