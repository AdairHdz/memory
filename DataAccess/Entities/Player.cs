using System.ComponentModel.DataAnnotations;

namespace DataAccess.Entities
{
    public partial class Player
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Player() { }

        [Key]        
        public string EmailAddress { get; set; }       
        public int Score { get; set; }
    }
}
