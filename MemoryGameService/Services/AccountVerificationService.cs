using DataAccess;
using DataAccess.Entities;
using DataAccess.Units_of_work;
using MemoryGameService.Contracts;
using System.Data.Entity.Core;
using System.Data.SqlClient;

namespace MemoryGameService.Services
{
    /// <inheritdoc/>
    public partial class MemoryGameService : IAccountVerificationService
    {
        /// <inheritdoc/>
        public bool SetAccountAsVerified(string emailAddress)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                Account retrievedAccount = unitOfWork.Accounts.Get(emailAddress);
                if(retrievedAccount != null)
                {
                    retrievedAccount.EmailWasVerified = true;
                    int rowsModified = unitOfWork.Complete();
                    return rowsModified == 1;
                }
                return false;
            }
            catch (SqlException sqlException)
            {
                _logger.Fatal("AccountVerificationService.cs: An exception was thrown while trying to get " +
                    "an Account entity with the specified primary key (emailAddress) " +
                    "from the database. Method SetAccountAsVerified, line 46", sqlException);
                throw;
            }
            catch (EntityException entityException)
            {
                _logger.Fatal("AccountVerificationService.cs: An exception was thrown while trying to access the database. " +
                    "It is possible that the database is corrupted or that it does not exist. " +
                    "Method SetAccountAsVerified, line 46", entityException);
                throw;
            }
            finally
            {
                unitOfWork.Dispose();
            }
        }

        /// <inheritdoc/>
        public bool AssignNewActivationToken(string emailAddress, string verificationToken)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                Account retrievedAccount = unitOfWork.Accounts.Get(emailAddress);
                if (retrievedAccount != null)
                {
                    retrievedAccount.ActivationToken = verificationToken;
                    int rowsModified = unitOfWork.Complete();
                    return rowsModified == 1;
                }
                return false;
            }
            catch (SqlException sqlException)
            {
                _logger.Fatal("AccountVerificationService.cs: An exception was thrown while trying to " +
                    "update the activation token of an Account entity." +
                    "Method AssignNewActivationToken, line 92", sqlException);
                throw;
            }
            catch (EntityException entityException)
            {
                _logger.Fatal("AccountVerificationService.cs: An exception was thrown while trying to access the database. " +
                    "It is possible that the database is corrupted or that it does not exist. " +
                    "Method AssignNewActivationToken, line 88", entityException);
                throw;
            }
            finally
            {
                unitOfWork.Dispose();
            }
        }

        /// <inheritdoc/>
        public bool AssignNewRecoveryToken(string emailAddress, string recoveryToken)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                Account retrievedAccount = unitOfWork.Accounts.Get(emailAddress);
                if (retrievedAccount != null)
                {
                    retrievedAccount.RecoveryToken = recoveryToken;
                    int rowsModified = unitOfWork.Complete();
                    return rowsModified == 1;
                }
                return false;
            }
            catch (SqlException sqlException)
            {
                _logger.Fatal("AccountVerificationService.cs: An exception was thrown while trying to " +
                    "update the activation token of an Account entity." +
                    "Method AssignNewRecoveryToken, line 92", sqlException);
                throw;
            }
            catch (EntityException entityException)
            {
                _logger.Fatal("AccountVerificationService.cs: An exception was thrown while trying to access the database. " +
                    "It is possible that the database is corrupted or that it does not exist. " +
                    "Method AssignNewRecoveryToken, line 88", entityException);
                throw;
            }
            finally
            {
                unitOfWork.Dispose();
            }
        }

        /// <inheritdoc/>
        public bool VerifyActivationToken(string emailAddress, string activationToken)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                Account retrievedAccount = unitOfWork.Accounts.FindFirstOccurence(account => account.EmailAddress == emailAddress && account.ActivationToken == activationToken);
                if(retrievedAccount != null)
                {
                    return true;
                }
                return false;
            }
            catch (SqlException sqlException)
            {
                _logger.Fatal("AccountVerificationService.cs: An exception was thrown while trying to find the first occurence" +
                    "of an Account entity with the specified email address and the " +
                    "given activation token. Method VerifyActivationToken, line 165", sqlException);
                throw;
            }
            catch (EntityException entityException)
            {
                _logger.Fatal("AccountVerificationService.cs: An exception was thrown while trying to access the database. " +
                    "It is possible that the database is corrupted or that it does not exist. " +
                    "Method VerifyActivationToken, line 165", entityException);
                throw;
            }
            finally
            {
                unitOfWork.Dispose();
            }
        }

        /// <inheritdoc/>
        public bool VerifyRecoveryToken(string emailAddress, string recoveryToken)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                Account retrievedAccount = unitOfWork.Accounts.FindFirstOccurence(account => account.EmailAddress == emailAddress && account.RecoveryToken == recoveryToken);
                if (retrievedAccount != null)
                {
                    return true;
                }
                return false;
            }
            catch (SqlException sqlException)
            {
                _logger.Fatal("AccountVerificationService.cs: An exception was thrown while trying to find the first occurence" +
                    "of an Account entity with the specified email address and the " +
                    "given recovery token. Method VerifyRecoveryToken, line 197", sqlException);
                throw;
            }
            catch (EntityException entityException)
            {
                _logger.Fatal("AccountVerificationService.cs: An exception was thrown while trying to access the database. " +
                    "It is possible that the database is corrupted or that it does not exist. " +
                    "Method VerifyRecoveryToken, line 197", entityException);
                throw;
            }
            finally
            {
                unitOfWork.Dispose();
            }
        }
    }
}
