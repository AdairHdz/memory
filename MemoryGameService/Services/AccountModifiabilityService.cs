using DataAccess;
using DataAccess.Entities;
using DataAccess.Units_of_work;
using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;
using System.Data.Entity.Core;
using System.Data.SqlClient;

namespace MemoryGameService.Services
{
    /// <inheritdoc/>
    public partial class MemoryGameService : IAccountModifiabilityService
    {
        /// <inheritdoc/>
        public bool ChangeUsername(string emailAddress, string newUsername)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                Account account = unitOfWork.Accounts.Get(emailAddress);
                if(account != null)
                {
                    account.Username = newUsername;
                    int rowsModified = unitOfWork.Complete();
                    return rowsModified == 1;
                }
                return false;
            }
            catch (SqlException sqlException)
            {
                _logger.Fatal("AccountModifiability.cs: An exception was thrown while trying to get an Account entity with " +
                    "the specified primary key (emailAddress). Method ChangeUsername, line 41" +
                    "from the database. ", sqlException);
                throw;
            }
            catch (EntityException entityException)
            {                
                _logger.Fatal("AccountModifiability.cs: An exception was thrown while trying to access the database. " +
                    "It is possible that the database is corrupted or that it does not exist. " +
                    "Method ChangeUsername, line 41", entityException);
                throw;
            }
            finally
            {
                unitOfWork.Dispose();
            }
        }

        /// <inheritdoc/>
        public bool SetNewPassword(PasswordModificationCredentialsDto passwordModificationCredentials)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            string emailAddress = passwordModificationCredentials.EmailAddress;
            string salt = passwordModificationCredentials.Salt;
            string newPassword = passwordModificationCredentials.NewPassword;
            try
            {
                Account account = unitOfWork.Accounts.Get(emailAddress);
                account.Password = newPassword;
                account.Salt = salt;
                int rowsModified = unitOfWork.Complete();
                return rowsModified == 1;
            }
            catch (SqlException sqlException)
            {
                _logger.Fatal("AccountModifiability.cs: An exception was thrown while trying to get an Account entity with " +
                    "the specified primary key (emailAddress) " +
                    "from the database. Method SetNewPassword, line 89", sqlException);
                throw;
            }
            catch (EntityException entityException)
            {
                _logger.Fatal("AccountModifiability.cs: An exception was thrown while trying to access the database. " +
                    "It is possible that the database is corrupted or that it does not exist. " +
                    "Method SetNewPassword, line 86", entityException);
                throw;
            }
            finally
            {
                unitOfWork.Dispose();
            }

        }
    }
}
