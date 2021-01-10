namespace DataAccess.Entities
{
    using System.ComponentModel.DataAnnotations;

    public partial class Player
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Player() { }

        [Key]        
        public string EmailAddress { get; set; }       
        //[StringLength(254)]
        //public virtual Account Account { get; set; }
        public int Score { get; set; }
    }
}
