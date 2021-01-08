namespace DataAccess.Entities
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public partial class Player
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Player()
        {
            
        }

        [Key]
        [StringLength(254)]
        public string EmailAddress { get; set; }
        public virtual Account Account { get; set; }
        public int Score { get; set; }
    }
}
