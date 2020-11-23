using System.Collections.ObjectModel;
using System.ComponentModel.DataAnnotations;

namespace DataAccess.Models
{
    public class CardDeck
    {
        [Key]
        public int CardDeckId { get; set; }
        public string BackImage { get; set; }
        public string Name { get; set; }
        public int NumberOfPairs { get; set; }

        public virtual Thematic Thematic { get; set; }
        public virtual Player Creator { get; set; }
        public virtual ObservableCollection<Card> Cards { get; set; }
    }
}
