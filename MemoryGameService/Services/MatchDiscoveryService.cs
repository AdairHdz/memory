using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGame.MemoryGameService.Faults;
using MemoryGameService.Contracts;
using System.Collections.Generic;
using System.ServiceModel;

namespace MemoryGameService.Services
{
    /// <summary>
    /// The <c>MatchDiscovery</c> service.
    /// Is used to show the available matches and check if they can accept players.
    /// The operations it contains are:
    /// <list type="bullet">
    /// <item>
    /// <term>CanJoin</term>
    /// <description>Checks if a player can join the match.</description>
    /// </item>
    /// <item>
    /// <term>EmailAddressIsAvailable</term>
    /// <description>Verifies the email provided.</description>
    /// </item>
    /// <item>
    /// <term>UserNameIsAvailable</term>
    /// <description>Verifies the username provided.</description>
    /// </item>
    /// </list>
    /// </summary>
    public partial class MemoryGameService : IMatchDiscoveryService
    {
        /// <summary>
        /// Checks if a new player can join the match, if it is already full or if it has started.
        /// </summary>
        /// <param name="matchHost">Name of the player who created the game.</param>
        /// <returns>True if the player can join the match and false if not.</returns>
        /// <exception cref="FaultException">Thrown when there is a null gameMath.</exception>
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

        /// <summary>
        /// Recovers all the games in the game that have not started.
        /// </summary>
        /// <returns>A list of the matches</returns>
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
