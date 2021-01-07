using DataAccess;
using DataAccess.Units_of_work;
using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;
using MemoryGameService.DataTransferObjectMappers;
using System.ServiceModel;
using MemoryGame.MemoryGameService.Faults;
using DataAccess.Entities;
using System.Data.SqlClient;

namespace MemoryGameService.Services
{
    public partial class MemoryGameService : IAccessibilityService
    {
        public string GetUserEmailAddress(string username)
        {
            var unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                Player playerWhoPossessTheSpecifiedUsername = unitOfWork.Players.FindFirstOccurence(x => x.UserName == username);
                if(playerWhoPossessTheSpecifiedUsername != null)
                {
                    string emailAddress = playerWhoPossessTheSpecifiedUsername.EmailAddress;
                    return emailAddress;
                }
                NonExistentUserFault nonExistentUserFault = new NonExistentUserFault();
                throw new FaultException<NonExistentUserFault>(nonExistentUserFault);
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

        public string GetUsername(string emailAddress)
        {
            var unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                var player = unitOfWork.Players.Get(emailAddress);
                if(player != null)
                {
                    return player.UserName;
                }
                NonExistentUserFault nonExistentUserFault = new NonExistentUserFault();
                throw new FaultException<NonExistentUserFault>(nonExistentUserFault);
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

        public bool IsVerified(string username)
        {
            var unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                var player = unitOfWork.Players.FindFirstOccurence(x => x.UserName == username && x.EmailWasVerified);
                if (player != null)
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

        public bool ItsRegistered(string emailAddress)
        {
            var unitOfWork = new UnitOfWork(new MemoryGameContext());
            Player player = unitOfWork.Players.Get(emailAddress);
            try
            {
                if (player != null)
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

        public PlayerCredentialsDTO GetPlayerCredentials(string username)
        {
            var unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {                
                Player playerWhoPossessTheSpecifiedUsername = unitOfWork.Players.FindFirstOccurence(x => x.UserName == username);                
                if(playerWhoPossessTheSpecifiedUsername != null)
                {
                    PlayerCredentialsDTO playerCredentials = PlayerCredentialsMapper.CreateDTO(playerWhoPossessTheSpecifiedUsername);
                    return playerCredentials;
                }
                NonExistentUserFault nonExistentUserFault = new NonExistentUserFault();
                throw new FaultException<NonExistentUserFault>(nonExistentUserFault);
            }
            catch (SqlException)
            {
                //Esto nunca lo lanza. Se da un timeout exception
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
