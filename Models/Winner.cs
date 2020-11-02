using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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
