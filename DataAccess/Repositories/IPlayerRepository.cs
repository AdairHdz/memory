using DataAccess.Entities;
using System;
using System.Collections.Generic;

namespace DataAccess.Repositories
{
    public interface IPlayerRepository : IRepository<Entities.Player>
    {       
        IEnumerable<Entities.Player> GetPlayersWithBestScore(int numberOfPlayersToBeRetrieved);
        void UpdateScoreOfPlayersAfterMatch(string username, int score);
        Player FindPlayerByUsername(string username);
    }
}
