using DataAccess;
using DataAccess.Units_of_work;
using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;
using MemoryGameService.DataTransferObjectMappers;
using System.ServiceModel;
using MemoryGame.MemoryGameService.Faults;
using DataAccess.Entities;
using System.Data.SqlClient;
using System;
using Utilities;
using System.Web.Hosting;
using System.IO;

namespace MemoryGameService.Services
{
    public partial class MemoryGameService : IAccessibilityService
    {
        private static readonly log4net.ILog _logger = log4net.LogManager.GetLogger("AccesibilityService.cs");
        public string GetUserEmailAddress(string username)
        {
            
            var unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                Account accountRetrieved = unitOfWork.Accounts.FindFirstOccurence(account => account.Username == username);                                
                if (accountRetrieved != null)
                {                    
                    string emailAddress = accountRetrieved.EmailAddress;
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
                Account accountRetrieved = unitOfWork.Accounts.Get(emailAddress);               
                if(accountRetrieved != null)
                {
                    return accountRetrieved.Username;
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
                Account accountRetrieved = unitOfWork.Accounts.FindFirstOccurence(account => account.Username == username && account.EmailWasVerified);                
                if (accountRetrieved != null)
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
            try
            {
                Account accountRetrieved = unitOfWork.Accounts.Get(emailAddress);
                if (accountRetrieved != null)
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
                Account accountRetrieved = unitOfWork.Accounts.FindFirstOccurence(account => account.Username == username);
                if (accountRetrieved != null)
                {
                    //PlayerCredentialsDTO playerCredentials = PlayerCredentialsMapper.CreateDTO(playerWhoPossessTheSpecifiedUsername);
                    PlayerCredentialsDTO playerCredentials = new PlayerCredentialsDTO()
                    {
                        EmailAddress = accountRetrieved.EmailAddress,
                        Username = accountRetrieved.Username,
                        Password = accountRetrieved.Password
                    };
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

        public string GetSalt(string username)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                Account retrievedAccount = unitOfWork.Accounts.FindFirstOccurence(account => account.Username == username);
                if(retrievedAccount != null)
                {
                    return retrievedAccount.Salt;
                }
                NonExistentUserFault nonExistentUserFault = new NonExistentUserFault();
                throw new FaultException<NonExistentUserFault>(nonExistentUserFault);
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                unitOfWork.Dispose();
            }
        }

        public bool HasAccessRights(string username, string password)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                IEncryption bCryptHashGenerator = new BCryptHashGenerator();
                Account retrievedAccount = unitOfWork.Accounts.FindFirstOccurence(account => account.Username == username && account.Password == password);
                if(retrievedAccount != null)
                {
                    return true;
                }
                return false;
            }
            catch (SqlException)
            {
                throw;
            }
            finally
            {
                unitOfWork.Dispose();
            }
        }
    }
}
