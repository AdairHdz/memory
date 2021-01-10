using DataAccess.Entities;
using System;
using System.Collections.Generic;
using System.Linq;

namespace DataAccess.Repositories
{
    public class PlayerRepository : Repository<Player>, IPlayerRepository
    {
        public MemoryGameContext MemoryGameContext
        {
            get 
            { 
                return _context as MemoryGameContext; 
            }
        }

        public PlayerRepository(MemoryGameContext context):base(context) { }

        public IEnumerable<Player> GetPlayersWithBestScore(int numberOfPlayersToBeRetrieved)
        {
            IEnumerable<Player> players = new List<Player>();
            var playersRetrieved = MemoryGameContext.Players
                .Include("Account");
            if(playersRetrieved != null)
            {
                players = playersRetrieved.OrderByDescending(player => player.Score)
                .Take(numberOfPlayersToBeRetrieved);
            }
            return players;
        }

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
