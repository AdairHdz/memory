using DataAccess;
using DataAccess.Entities;
using DataAccess.Units_of_work;
using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;
using System.Collections.Generic;
using System.Data.Entity.Core;
using System.Data.SqlClient;

namespace MemoryGameService.Services
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
    public partial class MemoryGameService : IScoreService
    {
        /// <summary>
        /// Gets a list with the players with best score in the full game.
        /// </summary>
        /// <param name="numberOfPlayersToBeRetrieved">The number of players you want to recover</param>
        /// <returns>A list of the specified number of top-scoring players.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
        /// <exception cref="EntityException">Thrown when there is no database.</exception>
        List<PlayerScoreDTO> IScoreService.GetPlayersWithBestScore(int numberOfPlayersToBeRetrieved)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                IEnumerable<Account> accountEntities = unitOfWork.Accounts.GetNumberOfAccountsWithPlayerInfo(numberOfPlayersToBeRetrieved);
                List<PlayerScoreDTO> playersWithBestScores = new List<PlayerScoreDTO>();

                foreach(var account in accountEntities)
                {
                    PlayerScoreDTO playerScore = new PlayerScoreDTO()
                    {
                        Username = account.Username,
                        TotalScore = account.Player.Score
                    };
                    playersWithBestScores.Add(playerScore);
                }

                return playersWithBestScores;
            }
            catch (SqlException sqlException)
            {
                _logger.Fatal("An exception was thrown while trying to get a collection of Account " +
                    "entities with and their Player info. " +
                    "Method GetPlayersWithBestScore, line 40", sqlException);
                throw;
            }
            catch (EntityException entityException)
            {
                _logger.Fatal("An exception was thrown while trying to access the database. " +
                    "It is possible that the database is corrupted or that it does not exist. " +
                    "Method GetPlayersWithBestScore, line 40", entityException);
                throw;
            }
            finally
            {
                unitOfWork.Dispose();
            }
        }
    }
}
