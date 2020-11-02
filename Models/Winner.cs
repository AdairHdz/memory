using System.ComponentModel.DataAnnotations;

namespace Models
{
    public class Winner
    {        
        [Key]
        public int WinnerId { get; set; }
        public int Score { get; set; }
        public virtual Player Player { get; set; }
        public virtual Match Match { get; set; }
    }
}
