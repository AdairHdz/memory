using DataAccess;
using DataAccess.Units_of_work;
using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;
using System.ServiceModel;
using MemoryGame.MemoryGameService.Faults;
using DataAccess.Entities;
using System.Data.SqlClient;
using System.Data.Entity.Core;

namespace MemoryGameService.Services
{
    /// <summary>
    /// The <c>Accesibility</c> service.
    /// Is used to verify a player that tries to enter to the game.
    /// The operations it contains are:
    /// <list type="bullet">
    /// <item>
    /// <term>GetUserEmailAddress</term>
    /// <description>Registers the new player.</description>
    /// </item>
    /// <item>
    /// <term>GetUsername</term>
    /// <description>Verifies the email provided.</description>
    /// </item>
    /// <item>
    /// <term>IsVerified</term>
    /// <description>Verifies the username provided.</description>
    /// </item>
    /// <item>
    /// <term>ItsRegistered</term>
    /// <description>Verifies the username provided.</description>
    /// </item>
    /// <item>
    /// <term>GetPlayerCredentials</term>
    /// <description>Verifies the username provided.</description>
    /// </item>
    /// <item>
    /// <term>GetSalt</term>
    /// <description>Verifies the username provided.</description>
    /// </item>
    /// <item>
    /// <term>HasAccessRights</term>
    /// <description>Verifies the username provided.</description>
    /// </item>
    /// </list>
    /// </summary>
    public partial class MemoryGameService : IAccessibilityService
    {
        private readonly log4net.ILog _logger = log4net.LogManager.GetLogger("AccesibilityService.cs");

        /// <summary>
        /// Gets the email address of a resitered player.
        /// </summary>
        /// <param name="username">Username of the player.</param>
        /// <returns>A string of the email address.</returns>
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
            catch (SqlException sqlException)
            {
                _logger.Fatal(sqlException);
                DatabaseConnectionLostFault databaseConnectionLostFault = new DatabaseConnectionLostFault();
                throw new FaultException<DatabaseConnectionLostFault>(databaseConnectionLostFault);
            }
            finally
            {
                unitOfWork.Dispose();
            }
        }

        /// <summary>
        /// Gets the username of a registered players.
        /// </summary>
        /// <param name="emailAddress">Email of the player.</param>
        /// <returns>A string of the username.</returns>
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
            catch (SqlException sqlException)
            {
                _logger.Fatal(sqlException);
                DatabaseConnectionLostFault databaseConnectionLostFault = new DatabaseConnectionLostFault();
                throw new FaultException<DatabaseConnectionLostFault>(databaseConnectionLostFault);
            }
            finally
            {
                unitOfWork.Dispose();
            }
        }

        /// <summary>
        /// Verifies if the player account has been verified to acces or not.
        /// </summary>
        /// <param name="username">Username associated with the account.</param>
        /// <returns>True if the account has been verified or flase if not.</returns>
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
            catch(SqlException sqlException)
            {
                _logger.Fatal(sqlException);
                DatabaseConnectionLostFault databaseConnectionLostFault = new DatabaseConnectionLostFault();
                throw new FaultException<DatabaseConnectionLostFault>(databaseConnectionLostFault);
            }
            finally
            {
                unitOfWork.Dispose();
            }
        }

        /// <summary>
        /// Verifies if a player has been registered or not.
        /// </summary>
        /// <param name="emailAddress">Email address of the player to verigy.</param>
        /// <returns>True if the player is already registered or flase if not.</returns>
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
            catch (SqlException sqlException)
            {
                _logger.Fatal(sqlException);
                DatabaseConnectionLostFault databaseConnectionLostFault = new DatabaseConnectionLostFault();
                throw new FaultException<DatabaseConnectionLostFault>(databaseConnectionLostFault);
            }
            finally
            {
                unitOfWork.Dispose();
            }
        }

        /// <summary>
        /// Gets the player credentials in a maped PlayerCredentialsDto object.
        /// </summary>
        /// <param name="username">Username of the player to get.</param>
        /// <returns>A PlayerCredentialsDtoObject.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
        public PlayerCredentialsDTO GetPlayerCredentials(string username)
        {
            var unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                Account accountRetrieved = unitOfWork.Accounts.FindFirstOccurence(account => account.Username == username);
                if (accountRetrieved != null)
                {
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
            catch (SqlException sqlException)
            {
                _logger.Fatal(sqlException);
                DatabaseConnectionLostFault databaseConnectionLostFault = new DatabaseConnectionLostFault();
                throw new FaultException<DatabaseConnectionLostFault>(databaseConnectionLostFault);
            }
            finally
            {
                unitOfWork.Dispose();
            }
        }

        /// <summary>
        /// Gets the salt with which the password has been encrypted.
        /// </summary>
        /// <param name="username">Player's username to consult.</param>
        /// <returns>A stirng of the salt.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
        /// <exception cref="EntityException">Thrown when there is no database.</exception>
        public string GetSalt(string username)
        {            
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {                
                Account retrievedAccount = unitOfWork.Accounts.FindFirstOccurence(account => account.Username == username);
                if (retrievedAccount != null)
                {
                    return retrievedAccount.Salt;
                }
                NonExistentUserFault nonExistentUserFault = new NonExistentUserFault();
                throw new FaultException<NonExistentUserFault>(nonExistentUserFault);
            }
            catch (SqlException sqlException)
            {
                _logger.Fatal(sqlException.Message);
                DatabaseConnectionLostFault databaseConnectionLostFault = new DatabaseConnectionLostFault();
                throw new FaultException<DatabaseConnectionLostFault>(databaseConnectionLostFault);                
            }
            catch(EntityException entityException)
            {
                _logger.Fatal(entityException);
                DatabaseConnectionLostFault databaseConnectionLostFault = new DatabaseConnectionLostFault();
                throw new FaultException<DatabaseConnectionLostFault>(databaseConnectionLostFault);
            }
            finally
            {
                unitOfWork.Dispose();
            }
        }

        /// <summary>
        /// Verifies if the player has an account and acces to the game or not.
        /// </summary>
        /// <param name="username">Username of the player associated with the account.</param>
        /// <param name="password">Password of the player associated with the account.</param>
        /// <returns>True if the player has acces or false if not.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
        public bool HasAccessRights(string username, string password)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                Account retrievedAccount = unitOfWork.Accounts.FindFirstOccurence(account => account.Username == username && account.Password == password);
                if(retrievedAccount != null)
                {
                    return true;
                }
                return false;
            }
            catch (SqlException sqlException)
            {
                _logger.Fatal(sqlException);
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
