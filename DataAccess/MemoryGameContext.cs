using Models;
using System.Data.Entity;


namespace DataAccess.Context
{
    public class MemoryGameContext : DbContext
    {

        public MemoryGameContext():base("default")
        {

        }

        public DbSet<Card> Cards { get; set; }
        public DbSet<CardDeck> CardDecks { get; set; }
        public DbSet<Match> Matches { get; set; }
        public DbSet<Player> Players { get; set; }
        public DbSet<Thematic> Thematics { get; set; }
        //public DbSet<Winner> Winners { get; set; }

        private void FixEfProviderServicesProblem()
        {
            // The Entity Framework provider type 'System.Data.Entity.SqlServer.SqlProviderServices, EntityFramework.SqlServer'
            // for the 'System.Data.SqlClient' ADO.NET provider could not be loaded. 
            // Make sure the provider assembly is available to the running application. 
            // See http://go.microsoft.com/fwlink/?LinkId=260882 for more information.
            var instance = System.Data.Entity.SqlServer.SqlProviderServices.Instance;
        }

    }


}
