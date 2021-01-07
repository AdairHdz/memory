using DataAccess;
using DataAccess.Entities;
using DataAccess.Units_of_work;
using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGame.MemoryGameService.Faults;
using MemoryGameService.Contracts;
using MemoryGameService.DataTransferObjectMappers;
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

                List<PlayerScoreDTO> playersWithBestScores = MapFromEntitiesToDTOs(playerEntities);
                return playersWithBestScores;
            }
            catch (SqlException)
            {
                DatabaseConnectionLostFault databaseConnectionLostFault = new DatabaseConnectionLostFault();
                throw new FaultException<DatabaseConnectionLostFault>(databaseConnectionLostFault);
            }
            finally
            {
                unitOfWork.Dispose();
            }
        }

        private List<PlayerScoreDTO> MapFromEntitiesToDTOs(IEnumerable<Player> listOfEntities)
        {
            List<PlayerScoreDTO> playersWithBestScores = new List<PlayerScoreDTO>();
            foreach (Player player in listOfEntities)
            {
                PlayerScoreDTO playerScoreDTO = PlayerScoreMapper.createDTO(player);
                playersWithBestScores.Add(playerScoreDTO);
            }
            return playersWithBestScores;
        }
    }
}
