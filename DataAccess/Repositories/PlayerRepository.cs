using DataAccess.Entities;
using System;
using System.Collections.Generic;
using System.Linq;

namespace DataAccess.Repositories
{
    public class PlayerRepository : Repository<Entities.Player>, IPlayerRepository
    {

        public MemoryGameContext MemoryGameContext
        {
            get { return _context as MemoryGameContext; }
        }

        public PlayerRepository(MemoryGameContext context):base(context)
        {
            
        }

        public IEnumerable<Entities.Player> GetPlayersWithBestScore(int numberOfPlayersToBeRetrieved)
        {
            IEnumerable<Player> players = MemoryGameContext.Players
                .OrderByDescending(player => player.TotalScore).Take(numberOfPlayersToBeRetrieved);
            return players;
        }
    }
}
