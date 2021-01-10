namespace DataAccess
{
    using System.Data.Entity;
    using DataAccess.Entities;

    public partial class MemoryGameContext : DbContext
    {
        public MemoryGameContext()
            : base("name=MemoryGame")
        {
            var ensureDllIsCopied = System.Data.Entity.SqlServer.SqlProviderServices.Instance;
            //Disable migraitions
            Database.SetInitializer<MemoryGameContext>(null);
        }

        public virtual DbSet<CardDeck> CardDecks { get; set; }
        public virtual DbSet<Card> Cards { get; set; }
        public virtual DbSet<Match> Matches { get; set; }
        public virtual DbSet<Player> Players { get; set; }
        public virtual DbSet<Account> Accounts { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            /*
            modelBuilder.Entity<CardDeck>()
                .HasMany(e => e.Cards)
                .WithRequired(e => e.CardDecks)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<CardDeck>()
                .HasMany(e => e.Matches)
                .WithRequired(e => e.CardDecks)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Match>()
                .HasMany(e => e.Winners)
                .WithRequired(e => e.Matches)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Player>()
                .HasMany(e => e.Winners)
                .WithRequired(e => e.Players)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Player>()
                .HasMany(e => e.Matches)
                .WithMany(e => e.Players)
                .Map(m => m.ToTable("MatchesPlayed").MapLeftKey("EmailAddress").MapRightKey("MatchId"));
            */
        }
    }
}
