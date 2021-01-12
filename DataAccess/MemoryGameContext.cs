using System.Data.Entity;
using DataAccess.Entities;

namespace DataAccess
{
    /// <summary>
    /// The <c>MemoryGameContext</c> class.
    /// Represents the DbContext the repositories will work with.
    /// </summary>
    public partial class MemoryGameContext : DbContext
    {
        /// <summary>
        /// The <c>MemoryGameContext</c> constructor.
        /// </summary>
        public MemoryGameContext()
            : base("name=MemoryGame")
        {
            var ensureDllIsCopied = System.Data.Entity.SqlServer.SqlProviderServices.Instance;
        }

        /// <summary>
        /// The table from the database that containts the card decks.
        /// </summary>
        public virtual DbSet<CardDeck> CardDecks { get; set; }
        /// <summary>
        /// The table from the database that containts the cards.
        /// </summary>
        public virtual DbSet<Card> Cards { get; set; }
        /// <summary>
        /// The table from the database that containts the matches.
        /// </summary>
        public virtual DbSet<Match> Matches { get; set; }
        /// <summary>
        /// The table from the database that contains the players.
        /// </summary>
        public virtual DbSet<Player> Players { get; set; }
        /// <summary>
        /// The table from the database that containts the accounts.
        /// </summary>
        public virtual DbSet<Account> Accounts { get; set; }       
    }
}
