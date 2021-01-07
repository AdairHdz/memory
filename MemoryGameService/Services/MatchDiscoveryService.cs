using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGame.MemoryGameService.Faults;
using MemoryGameService.Contracts;
using System.Collections.Generic;
using System.ServiceModel;

namespace MemoryGameService.Services
{
    public partial class MemoryGameService : IMatchDiscoveryService
    {
        public bool CanJoin(string matchHost)
        {
            MatchDto gameMatch = GetMatch(matchHost);
            if (gameMatch == null)
            {
                MatchAccessDeniedFault matchAccessDeniedFault = new MatchAccessDeniedFault()
                {
                    Details = "This error occured at the method CanJoin on class MatchDiscoveryService.cs"
                };
                throw new FaultException<MatchAccessDeniedFault>(matchAccessDeniedFault);
            }
            else
            {
                Lobby lobby = gameMatch.Lobby;
                IList<PlayerInLobby> playersConnectedToLobby = lobby.GetPlayersConnectedToLobby();
                int numberOfPlayersConnectedToMatch = playersConnectedToLobby.Count;
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


        }

        public IList<MatchDto> GetActiveMatches()
        {
            IList<MatchDto> matchesWaitingToStart = new List<MatchDto>();
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
