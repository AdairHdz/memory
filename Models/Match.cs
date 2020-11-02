using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class Match
    {
        [Key]
        public int MatchId { get; set; }
        public float Duration { get; set; }
        public MatchStatus State { get; set; }
        public virtual ObservableCollection<Winner> Winners { get; set; }
        public virtual ObservableCollection<Player> Players { get; set; }
        public virtual CardDeck CardDeckUtilized { get; set; }
    }
}
