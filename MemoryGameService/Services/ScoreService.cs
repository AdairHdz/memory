using DataAccess;
using DataAccess.Entities;
using DataAccess.Units_of_work;
using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGame.MemoryGameService.Faults;
using MemoryGameService.Contracts;
using MemoryGameService.DataTransferObjectMappers;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.ServiceModel;

namespace MemoryGameService.Services
{
    public partial class MemoryGameService : IScoreService
    {
        List<PlayerScoreDTO> IScoreService.GetPlayersWithBestScore(int numberOfPlayersToBeRetrieved)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                IEnumerable<Player> playerEntities =
                    unitOfWork.Players.GetPlayersWithBestScore(numberOfPlayersToBeRetrieved);

                List<PlayerScoreDTO> playersWithBestScores = new List<PlayerScoreDTO>();

                foreach(var player in playerEntities)
                {
                    PlayerScoreDTO playerScore = new PlayerScoreDTO()
                    {
                        Username = player.Account.Username,
                        TotalScore = player.Score
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
