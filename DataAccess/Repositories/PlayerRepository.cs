using DataAccess.Entities;
using System.Collections.Generic;
using System.Linq;

namespace DataAccess.Repositories
{
    /// <summary>
    /// The <c>PlayerRepository</c> class.
    /// Adds specific operations that you probably would need to execute on the <c>Player</c> entity.
    /// </summary>
    public class PlayerRepository : Repository<Player>, IPlayerRepository
    {
        /// <summary>
        /// The DbContext that the <c>AccountRepository</c> will work with.
        /// It is derived from the base class: <c>Repository</c>
        /// </summary>
        public MemoryGameContext MemoryGameContext
        {
            get 
            { 
                return _context as MemoryGameContext; 
            }
        }

        /// <summary>
        /// The <c>PlayerRepository</c> constructor.
        /// </summary>
        /// <param name="context">The DbContext that the <c>PlayerRepository</c> will work with.</param>
        public PlayerRepository(MemoryGameContext context):base(context) { }

        /// <summary>
        /// Updates the score of the <c>Player</c> entity with the specified username.
        /// </summary>
        /// <param name="username">The username of the <c>Player</c> entity you want to update the score.</param>
        /// <param name="score">The score that you want to set to the <c>Player</c> entity.</param>
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

        /// <summary>
        /// Retrieves the <c>Player</c> entity with the specified username.
        /// </summary>
        /// <param name="username">The username of the <c>Player</c> entity you want to get.</param>
        /// <returns>the <c>Player</c> entity with the specified username, or null if there were no matches.</returns>
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
