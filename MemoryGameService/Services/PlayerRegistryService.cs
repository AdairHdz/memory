using DataAccess;
using DataAccess.Entities;
using DataAccess.Units_of_work;
using MemoryGameService.Contracts;
using MemoryGame.MemoryGameService.DataTransferObjects;
using System.Data.SqlClient;
using MemoryGame.MemoryGameService.Faults;
using System.ServiceModel;

namespace MemoryGameService.Services
{
    public partial class MemoryGameService : IPlayerRegistryService
    {
        public bool RegisterNewPlayer(PlayerDTO playerDTO)
        {
            Player newPlayer = PlayerMapper.CreateEntity(playerDTO);
            newPlayer.EmailWasVerified = false;
            newPlayer.TotalScore = 0;
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                unitOfWork.Players.Add(newPlayer);
                int playerWasRegistered = unitOfWork.Complete();                
                return playerWasRegistered == 1;
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

        public bool EmailAddressIsAvailable(string emailAddress)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                Player playerWithTheSpecifiedEmailAddress = unitOfWork.Players.Get(emailAddress);                
                if (playerWithTheSpecifiedEmailAddress == null)
                {
                    return true;
                }
                return false;
            }
            catch(SqlException)
            {
                DatabaseConnectionLostFault databaseConnectionLostFault = new DatabaseConnectionLostFault();
                throw new FaultException<DatabaseConnectionLostFault>(databaseConnectionLostFault);
            }
            finally
            {
                unitOfWork.Dispose();
            }
        }

        public bool UserNameIsAvailable(string username)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                Player player = unitOfWork.Players.FindFirstOccurence(playerToFind => playerToFind.UserName == username);
                if (player == null)
                {
                    return true;
                }
                return false;
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


    }
}
