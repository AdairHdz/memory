namespace DataAccess.Entities
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public partial class Player
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Player()
        {
            
        }

        [Key]
        public string EmailAddress { get; set; }       

        [ForeignKey("EmailAddress")]
        [StringLength(254)]
        public virtual Account Account { get; set; }
        public int Score { get; set; }
    }
}
