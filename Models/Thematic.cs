using System.Collections.ObjectModel;
using System.ComponentModel.DataAnnotations;

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
