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
        /// <exception cref="MemoryGame.MemoryGameService.Faults.MatchAccessDeniedFault">
        /// Thrown when a player tries to access to a match that does not exist anymore.
        /// </exception>
        public bool CanJoin(string matchHost)
        {
            MatchDto gameMatch = GetMatch(matchHost);
            if (gameMatch == null)
            {
                MatchAccessDeniedFault matchAccessDeniedFault = new MatchAccessDeniedFault()
                {
                    Details = "The match does not exist."
                };
                throw new FaultException<MatchAccessDeniedFault>(matchAccessDeniedFault);
            }
            else
            {
                Lobby lobby = gameMatch.Lobby;
                IList<PlayerInLobby> playersConnectedToLobby = lobby.GetPlayersConnectedToLobby();
                int numberOfPlayersConnectedToLobby = playersConnectedToLobby.Count;
                int numberOfPlayersRequired = gameMatch.MaxNumberOfPlayers;
                bool matchHasStarted = gameMatch.HasStarted;
                bool ThereIsSpaceForAnotherPlayer = false;

                if (numberOfPlayersConnectedToLobby < numberOfPlayersRequired)
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
