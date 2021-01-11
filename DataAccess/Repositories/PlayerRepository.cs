using DataAccess.Entities;
using System.Collections.Generic;
using System.Linq;

namespace DataAccess.Repositories
{
    /// <inheritdoc/>
    public class PlayerRepository : Repository<Player>, IPlayerRepository
    {
        /// <inheritdoc/>
        public MemoryGameContext MemoryGameContext
        {
            get 
            { 
                return _context as MemoryGameContext; 
            }
        }

        /// <inheritdoc/>
        public PlayerRepository(MemoryGameContext context):base(context) { }

        /// <inheritdoc/>
        public void UpdateScoreOfPlayersAfterMatch(string username, int score)
        {
            IEnumerable<Account> retrievedAccounts = MemoryGameContext.Accounts.Include("Player")
                .Where(account => account.Username == username);
            if (retrievedAccounts.Count() == 1){
                Account account = retrievedAccounts.First();
                Player player = account.Player;                
                player.Score += score;                
            }
        }

        /// <inheritdoc>/>
        public Player FindPlayerByUsername(string username)
        {
            IEnumerable<Account> retrievedAccounts = MemoryGameContext.Accounts.Include("Player")
                .Where(account => account.Username == username);
            if(retrievedAccounts.Count() == 1)
            {
                Account account = retrievedAccounts.First();
                return account.Player;
            }
            return null;
        }
    }
}
