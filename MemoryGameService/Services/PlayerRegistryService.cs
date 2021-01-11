using DataAccess;
using DataAccess.Entities;
using DataAccess.Units_of_work;
using MemoryGameService.Contracts;
using MemoryGame.MemoryGameService.DataTransferObjects;
using System.Data.SqlClient;
using MemoryGame.MemoryGameService.Faults;
using System.ServiceModel;
using System;

namespace MemoryGameService.Services
{
    /// <summary>
    /// The <c>PlayerRegistry</c> service.
    /// Is used to register a new player in the database of the game.
    /// The operations it contains are:
    /// <list type="bullet">
    /// <item>
    /// <term>RegistryNewPlayer</term>
    /// <description>Registers the new player.</description>
    /// </item>
    /// <item>
    /// <term>EmailAddressIsAvailable</term>
    /// <description>Verifies the email provided.</description>
    /// </item>
    /// <item>
    /// <term>UserNameIsAvailable</term>
    /// <description>Verifies the username provided.</description>
    /// </item>
    /// </list>
    /// </summary>
    public partial class MemoryGameService : IPlayerRegistryService
    {
        /// <summary>
        /// Registers the new players in the game database.
        /// </summary>
        /// <param name="playerDTO">Contains basic player data.</param>
        /// <param name="salt">The binary salt to hash with the password.</param>
        /// <returns>True if the player is registered and false if not.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
        /// <exception cref="Exception">Thrown when a default exception is catched.</exception>
        public bool RegisterNewPlayer(PlayerDTO playerDTO, string salt)
        {

            Account newAccount = new Account()
            {
                EmailAddress = playerDTO.EmailAddress,
                Username = playerDTO.Username,
                Password = playerDTO.Password,
                Salt = salt,
                EmailWasVerified = false,
                ActivationToken = playerDTO.VerificationToken
            };
            
            Player newPlayer = new Player()
            {
                EmailAddress = newAccount.EmailAddress,
                Score = 0
            };
            MemoryGameContext memoryGameContext = new MemoryGameContext();
            UnitOfWork unitOfWork = new UnitOfWork(memoryGameContext);
            try
            {
                var transaction = memoryGameContext.Database.BeginTransaction();
                unitOfWork.Accounts.Add(newAccount);
                unitOfWork.Players.Add(newPlayer);
                int rowsAffected = unitOfWork.Complete();
                transaction.Commit();
                return rowsAffected > 0;
            }
            catch (SqlException)
            {
                DatabaseConnectionLostFault databaseConnectionLostFault = new DatabaseConnectionLostFault();
                throw new FaultException<DatabaseConnectionLostFault>(databaseConnectionLostFault);
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                Console.ReadLine();
                throw;
            }
            finally
            {
                unitOfWork.Dispose();
            }
        }

        /// <summary>
        /// Verify that the email provided is not already registered in the database.
        /// </summary>
        /// <param name="emailAddress">The email provided by the user.</param>
        /// <returns>True if the email is available and false if not.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
        public bool EmailAddressIsAvailable(string emailAddress)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                Account accountWithTheSpecifiedEmailAddress = unitOfWork.Accounts.Get(emailAddress);
                if (accountWithTheSpecifiedEmailAddress == null)
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

        /// <summary>
        /// Verify that the username provided is not already registered in the database.
        /// </summary>
        /// <param name="username">The username provided by the user.</param>
        /// <returns>True if the email is available and false if not.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
        public bool UserNameIsAvailable(string username)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                Account accountWithTheSpecifiedUsername = unitOfWork.Accounts.FindFirstOccurence(account => account.Username == username);
                if (accountWithTheSpecifiedUsername == null)
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
