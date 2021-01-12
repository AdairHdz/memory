using MemoryGame.MemoryGameService.DataTransferObjects;
using System.Collections.Generic;
using System.ServiceModel;
using System.Data.Entity.Core;
using System.Data.SqlClient;

namespace MemoryGameService.Contracts
{
    /// <summary>
    /// The <c>Score</c> service.
    /// Is used to get the players with best scores in the game.
    /// The only operation it contains is:
    /// <list type="bullet">
    /// <item>
    /// <term>GetPlayersWithBestScore</term>
    /// <description>Gets the players with the best score.</description>
    /// </item>
    /// </list>
    /// </summary>
    [ServiceContract]
    public interface IScoreService
    {
        /// <summary>
        /// Gets a list with the players with best score in the full game.
        /// </summary>
        /// <param name="numberOfPlayersToBeRetrieved">The number of players you want to recover</param>
        /// <returns>A list of the specified number of top-scoring players.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
        /// <exception cref="EntityException">Thrown when there is no database.</exception>
        [OperationContract]
        List<PlayerScoreDto> GetPlayersWithBestScore(int numberOfPlayersToBeRetrieved);
    }
}
