using DataAccess;
using DataAccess.Entities;
using DataAccess.Units_of_work;
using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGame.MemoryGameService.Faults;
using MemoryGameService.Contracts;
using System;
using System.Collections.Generic;
using System.ServiceModel;

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
        /// <exception cref="Exception">Thrown when a default exception is catched.</exception>
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
            catch (Exception e)
            {
                Console.WriteLine(e);
                Console.ReadLine();
                DatabaseConnectionLostFault databaseConnectionLostFault = new DatabaseConnectionLostFault();
                throw new FaultException<DatabaseConnectionLostFault>(databaseConnectionLostFault);
            }
            finally
            {
                unitOfWork.Dispose();
            }
        }
    }
}
