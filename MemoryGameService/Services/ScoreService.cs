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
    public partial class MemoryGameService : IScoreService
    {
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
