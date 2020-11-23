using DataAccess.Models;
using System.Collections.Generic;

namespace DataAccess.Repositories
{
    public interface IPlayerRepository : IRepository<Player>
    {       
        IEnumerable<Player> GetPlayersWithBestScore(int numberOfPlayersToBeRetrieved);
    }
}
