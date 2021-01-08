using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace DataAccess.Entities
{
    public partial class Account
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Account()
        {
        }

        [Key]
        [StringLength(254)]
        public string EmailAddress { get; set; }

        [Required]
        public string Username { get; set; }

        [Required]
        [StringLength(254)]
        public string Password { get; set; }
        
        [StringLength(254)]
        [DefaultValue("$2a$04$DXnem3yCZc6RNQKVNFKLtO")]
        public string Salt { get; set; }


        public bool EmailWasVerified { get; set; }

        [StringLength(50)]
        public string ActivationToken { get; set; }

        [StringLength(50)]
        public string RecoveryToken { get; set; }
    }
}
