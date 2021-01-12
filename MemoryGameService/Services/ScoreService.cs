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
    /// <inheritdoc/>
    public partial class MemoryGameService : IScoreService
    {
        /// <inheritdoc/>
        List<PlayerScoreDto> IScoreService.GetPlayersWithBestScore(int numberOfPlayersToBeRetrieved)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                IEnumerable<Account> accountEntities = unitOfWork.Accounts.GetNumberOfAccountsWithPlayerInfo(numberOfPlayersToBeRetrieved);
                List<PlayerScoreDto> playersWithBestScores = new List<PlayerScoreDto>();

                foreach(var account in accountEntities)
                {
                    PlayerScoreDto playerScore = new PlayerScoreDto()
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
