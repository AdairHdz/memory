using DataAccess;
using DataAccess.Units_of_work;
using MemoryGameService.Contracts;
using System.ServiceModel;
using MemoryGame.MemoryGameService.Faults;
using DataAccess.Entities;
using System.Data.SqlClient;
using System.Data.Entity.Core;

namespace MemoryGameService.Services
{
    /// <inheritdoc/>
    public partial class MemoryGameService : IAccessibilityService
    {
        private readonly log4net.ILog _logger = log4net.LogManager.GetLogger("AccesibilityService.cs");

        /// <inheritdoc/>
        public string GetUserEmailAddress(string username)
        {            
            var unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                Account accountRetrieved = unitOfWork.Accounts.FindFirstOccurence(account => account.Username == username);
                if(accountRetrieved != null)
                {
                    string emailAddress = accountRetrieved.EmailAddress;
                    return emailAddress;
                }
                throw new FaultException<NonExistentUserFault>(new NonExistentUserFault()
                {
                    Error = "No user with those credentials is registered int the database",
                    Details = "The username entered does not match any of our registered users"
                });
            }
            catch (SqlException sqlException)
            {
                _logger.Fatal("AccesibilityService.cs: An exception was thrown while trying " +
                    "to get the first occurence of an Account entity " +
                    "from the database. ", sqlException);
                throw;
            }
            catch (EntityException entityException)
            {
                _logger.Fatal("AccesibilityService.cs: An exception was thrown while trying to access the " +
                    " database. It is possible that the database is corrupted or that it does not exist. " +
                    "Method GetUserEmailAddress, line 23", entityException);
                throw;
            }
            finally
            {
                unitOfWork.Dispose();
            }
        }

        /// <inheritdoc/>
        public string GetUsername(string emailAddress)
        {
            var unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                Account accountRetrieved = unitOfWork.Accounts.Get(emailAddress);
                return accountRetrieved.Username;
            }
            catch (SqlException sqlException)
            {
                _logger.Fatal("AccesibilityService.cs: An exception was thrown while trying " +
                     "to get the account entity with the specified primary key (email address)" +
                     "from the database. Method GetUsername, line 54 ", sqlException);
                throw;
            }
            catch (EntityException entityException)
            {
                _logger.Fatal("AccesibilityService.cs: An exception was thrown while trying to access the " +
                    " database. It is possible that the database is corrupted or that it does not exist. " +
                    "Method GetUsername, line 54", entityException);
                throw;
            }
            finally
            {
                unitOfWork.Dispose();
            }
        }


        /// <inheritdoc/>
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
            catch (SqlException sqlException)
            {
                _logger.Fatal("AccesibilityService.cs: An exception was thrown while trying to get the first  " +
                    "occurence of an Account entity with the specified username and with a verified account in " +
                    "the IsVerified method. Line 92", sqlException);
                throw;
            }
            catch (EntityException entityException)
            {
                _logger.Fatal("AccesibilityService.cs: An exception was thrown while trying to access the database. " +
                    "It is possible that the database is corrupted or that it does not exist. " +
                    "Method IsVerified, line 92", entityException);
                throw;
            }
            finally
            {
                unitOfWork.Dispose();
            }
        }
        
        /// <inheritdoc/>
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
                _logger.Fatal("AccesibilityService.cs: An exception was thrown while trying to get an Account " +
                    "entity from its primary key (emailAddress) in the ItsRegistered method. Line 82", sqlException);
                throw;
            }
            catch (EntityException entityException)
            {
                _logger.Fatal("AccesibilityService.cs: An exception was thrown while trying to access the database. " +
                    "It is possible that the database is corrupted or that it does not exist. " +
                    "Method ItsRegistered, line 82", entityException);
                throw;
            }
            finally
            {
                unitOfWork.Dispose();
            }
        }

        /// <inheritdoc/>
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
                throw new FaultException<NonExistentUserFault>(new NonExistentUserFault()
                {
                    Error = "No user with those credentials is registered int the database",
                    Details = "The username entered does not match any of our registered users"
                });
            }
            catch (SqlException sqlException)
            {
                _logger.Fatal("AccesibilityService.cs: An exception was thrown while trying to get the first " +
                    "occurence of an Account entity his occured in the GetSalt method. Line 117", sqlException);
                throw;
            }
            catch(EntityException entityException)
            {
                _logger.Fatal("AccesibilityService.cs: An exception was thrown while trying to access the database. " +
                    "It is possible that the database is corrupted or that it does not exist. " +
                    "Method GetSalt, line 117", entityException);
                throw;
            }
            finally
            {
                unitOfWork.Dispose();
            }
        }


        /// <inheritdoc/>
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
                _logger.Fatal("AccesibilityService.cs: An exception was thrown while trying to get the first occurence of an  " +
                    "Account entity. This occured in the HasAccessRights method. Line 150", sqlException);
                throw;
            }
            catch (EntityException entityException)
            {
                _logger.Fatal("AccesibilityService.cs: An exception was thrown while trying to access the database. " +
                    "It is possible that the database is corrupted or that it does not exist. " +
                    "Method HasAccessRights, line 150", entityException);
                throw;
            }
            finally
            {
                unitOfWork.Dispose();
            }
        }
    }
}
