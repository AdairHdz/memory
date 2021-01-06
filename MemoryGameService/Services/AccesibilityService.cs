using DataAccess;
using DataAccess.Units_of_work;
using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;
using MemoryGameService.DataTransferObjectMappers;
using System.Linq;
using System.ServiceModel;
using MemoryGame.MemoryGameService.Faults;
using DataAccess.Entities;
using System;
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
                string emailAddress = playerWhoPossessTheSpecifiedUsername.EmailAddress;                
                return emailAddress;
            }catch(InvalidOperationException)
            {
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
                if(player == null)
                {
                    NonExistentUserFault nonExistentUserFault = new NonExistentUserFault();
                    throw new FaultException<NonExistentUserFault>(nonExistentUserFault);
                }
                string username = player.UserName;                
                return username;
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

        public bool HasAccessRights(PlayerCredentialsDTO playerCredentialsDTO)
        {
            string username = playerCredentialsDTO.Username;
            string password = playerCredentialsDTO.Password;
            var unitOfWork = new UnitOfWork(new MemoryGameContext());

            try
            {
                var player = unitOfWork.Players.Find(x => x.UserName == username && x.Password == password);
                int matches = player.Count();                
                return matches == 1;
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
            var player = unitOfWork.Players.Find(x => x.UserName == username && x.EmailWasVerified);
            int matches = player.Count();
            unitOfWork.Dispose();
            return matches == 1;
        }

        public bool ItsRegistered(string emailAddress)
        {
            var unitOfWork = new UnitOfWork(new MemoryGameContext());
            var player = unitOfWork.Players.Find(x => x.EmailAddress == emailAddress);
            int matches = player.Count();
            unitOfWork.Dispose();
            return matches == 1;
        }

        public PlayerCredentialsDTO GetPlayerCredentials(string username)
        {
            var unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {                
                Player playerWhoPossessTheSpecifiedUsername = unitOfWork.Players.FindFirstOccurence(x => x.UserName == username);                
                PlayerCredentialsDTO playerCredentials = PlayerCredentialsMapper.CreateDTO(playerWhoPossessTheSpecifiedUsername);
                return playerCredentials;
            }
            catch (SqlException)
            {
                //Esto nunca lo lanza. Se da un timeout exception
                DatabaseConnectionLostFault databaseConnectionLostFault = new DatabaseConnectionLostFault();
                throw new FaultException<DatabaseConnectionLostFault>(databaseConnectionLostFault);
            }
            catch (InvalidOperationException)
            {
                NonExistentUserFault nonExistentUserFault = new NonExistentUserFault();
                throw new FaultException<NonExistentUserFault>(nonExistentUserFault);
            }
            finally
            {
                unitOfWork.Dispose();
            }
        }
    }
}
