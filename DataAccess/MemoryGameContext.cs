using System.Data.Entity;
using DataAccess.Entities;

namespace DataAccess
{
    public partial class MemoryGameContext : DbContext
    {
        public MemoryGameContext()
            : base("name=MemoryGame")
        {
            var ensureDllIsCopied = System.Data.Entity.SqlServer.SqlProviderServices.Instance;
        }

        public virtual DbSet<CardDeck> CardDecks { get; set; }
        public virtual DbSet<Card> Cards { get; set; }
        public virtual DbSet<Match> Matches { get; set; }
        public virtual DbSet<Player> Players { get; set; }
        public virtual DbSet<Account> Accounts { get; set; }

        
        protected override void OnModelCreating(DbModelBuilder modelBuilder) { }
    }
}
