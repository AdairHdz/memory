using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGame.MemoryGameService.Faults;
using System.Collections.Generic;
using System.ServiceModel;

namespace MemoryGameService.Contracts
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
    [ServiceContract]
    public interface IMatchDiscoveryService
    {
        /// <summary>
        /// Recovers all the games in the game that have not started.
        /// </summary>
        /// <returns>A list of the matches</returns>
        [OperationContract]
        IList<MatchDto> GetActiveMatches();

        /// <summary>
        /// Checks if a new player can join the match, if it is already full or if it has started.
        /// </summary>
        /// <param name="matchHost">Name of the player who created the game.</param>
        /// <returns>True if the player can join the match and false if not.</returns>
        /// <exception cref="MemoryGame.MemoryGameService.Faults.MatchAccessDeniedFault">
        /// Thrown when a player tries to access to a match that does not exist anymore.
        /// </exception>
        [FaultContract(typeof(MatchAccessDeniedFault))]
        [OperationContract]
        bool CanJoin(string matchHost);
    }
}
