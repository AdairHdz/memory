using DataAccess;
using DataAccess.Entities;
using DataAccess.Units_of_work;
using MemoryGameService.Contracts;
using MemoryGame.MemoryGameService.DataTransferObjects;
using System.Data.SqlClient;
using System.Data.Entity.Core;

namespace MemoryGameService.Services
{
    /// <inheritdoc/>
    public partial class MemoryGameService : IPlayerRegistryService
    {
        /// <inheritdoc/>
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
                unitOfWork.Accounts.Add(newAccount);
                unitOfWork.Players.Add(newPlayer);
                int rowsAffected = unitOfWork.Complete();
                return rowsAffected > 0;
            }
            catch (SqlException sqlException)
            {
                _logger.Fatal("PlayerRegistryService.cs: An exception was thrown while trying to register both " +
                    "Account and Player entities. " +
                     "Method RegisterNewPlayer, line 67", sqlException);
                throw;
            }
            catch (EntityException entityException)
            {
                _logger.Fatal("PlayerRegistryService.cs: An exception was thrown while trying to access the database. " +
                    "It is possible that the database is corrupted or that it does not exist. " +
                    "Method  RegisterNewPlayer, line 67", entityException);
                throw;
            }
            finally
            {
                unitOfWork.Dispose();
            }
        }

        /// <inheritdoc/>
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
            catch (SqlException sqlException)
            {
                _logger.Fatal("PlayerRegistryService.cs: An exception was thrown while trying to get " +
                    "an Account using its primary key (emailAddress). " +
                     "Method EmailAddressIsAvailable, line 101", sqlException);
                throw;
            }
            catch (EntityException entityException)
            {
                _logger.Fatal("An exception was thrown while trying to access the database. " +
                    "It is possible that the database is corrupted or that it does not exist. " +
                    "Method EmailAddressIsAvailable, line 101", entityException);
                throw;
            }
            finally
            {
                unitOfWork.Dispose();
            }
        }

        /// <inheritdoc/>
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
            catch (SqlException sqlException)
            {
                _logger.Fatal("PlayerRegistryService.cs: An exception was thrown while trying to " +
                    "find the first occurence of an Account with the username provided. " +
                     "Method UsernameIsAvailable, line 139", sqlException);
                throw;
            }
            catch (EntityException entityException)
            {
                _logger.Fatal("An exception was thrown while trying to access the database. " +
                    "It is possible that the database is corrupted or that it does not exist. " +
                    "Method UsernameIsAvailable, line 139", entityException);
                throw;
            }
            finally
            {
                unitOfWork.Dispose();
            }
        }


    }
}
