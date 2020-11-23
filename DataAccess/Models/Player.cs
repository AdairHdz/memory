using System.Collections.ObjectModel;
using System.ComponentModel.DataAnnotations;

namespace DataAccess.Models
{
    public class Player
    {
        [Key]
        public string EmailAddress { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public bool EmailWasVerified { get; set; }
        public int TotalScore { get; set; }
        public string VerificationToken { get; set; }
        public string RecoveryToken { get; set; }

        public virtual ObservableCollection<CardDeck> CardDecksCreated { get; set; }
    }
}
