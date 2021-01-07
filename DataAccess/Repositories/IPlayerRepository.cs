using System.Collections.Generic;

namespace DataAccess.Repositories
{
    public interface IPlayerRepository : IRepository<Entities.Player>
    {       
        IEnumerable<Entities.Player> GetPlayersWithBestScore(int numberOfPlayersToBeRetrieved);
    }
}
