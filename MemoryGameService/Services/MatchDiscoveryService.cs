using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;
using System.Collections.Generic;
using System.ServiceModel;

namespace MemoryGameService.Services
{
    public partial class MemoryGameService : IMatchDiscoveryService
    {
        public bool CanJoin(string matchHost)
        {
            GameMatchConfigDto gameMatch = GetMatch(matchHost);
            int numberOfPlayersConnectedToMatch = gameMatch.GetPlayersConnectedToLobby().Count;
            int numberOfPlayersRequired = gameMatch.MaxNumberOfPlayers;
            bool matchHasStarted = gameMatch.HasStarted;
            bool ThereIsSpaceForAnotherPlayer = false;

            if (numberOfPlayersConnectedToMatch < numberOfPlayersRequired)
            {
                ThereIsSpaceForAnotherPlayer = true;
            }

            if (ThereIsSpaceForAnotherPlayer && !matchHasStarted)
            {
                return true;
            }
            return false;
        }

        public IList<GameMatchConfigDto> GetActiveMatches()
        {
            IList<GameMatchConfigDto> matchesWaitingToStart = new List<GameMatchConfigDto>();
            foreach (var match in _matches)
            {
                if (!match.HasStarted)
                {
                    matchesWaitingToStart.Add(match);
                }
            }
            return matchesWaitingToStart;
        }
    }
}
