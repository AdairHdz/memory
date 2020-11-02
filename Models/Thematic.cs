using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class Thematic
    {
        [Key]
        public int ThematicId { get; set; }
        public string Name { get; set; }
        public virtual ObservableCollection<CardDeck> CardDecks { get; set; }
    }
}
