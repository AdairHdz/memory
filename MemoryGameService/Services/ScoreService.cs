using DataAccess;
using DataAccess.Entities;
using DataAccess.Units_of_work;
using MemoryGameService.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGameService.Services
{
    public partial class MemoryGameService : IScoreService
    {
        public string[] GetPlayersWithBestScore(int numberOfPlayersToBeRetrieved)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            IEnumerable<Player> players =
                unitOfWork.Players.GetPlayersWithBestScore(numberOfPlayersToBeRetrieved);
            string[] names = new string[numberOfPlayersToBeRetrieved];
            foreach (var player in players)
            {
                names.Append(player.UserName);
            }
            return names;
        }
    }
}
