using DataAccess;
using DataAccess.Entities;
using DataAccess.Units_of_work;
using MemoryGameService.Contracts;
using System.Data.Entity.Core;
using System.Data.SqlClient;

namespace MemoryGameService.Services
{
    /// <summary>
    /// The <c>AccountVerification</c> service.
    /// Is used to verify the account of a new registered player.
    /// The operations it contains are:
    /// <list type="bullet">
    /// <item>
    /// <term>SetAccountAsVerified</term>
    /// <description>Changes a player's account status to verified.</description>
    /// </item>
    /// <item>
    /// <term>AssignNewVerificationToken</term>
    /// <description>Assign a new verification token for a player.</description>
    /// </item>
    /// <item>
    /// <term>VerifyToken</term>
    /// <description>Check if the token provided is the same as the one 
    /// registered in the database</description>
    /// </item>
    /// </list>
    /// </summary>
    public partial class MemoryGameService : IAccountVerificationService
    {
        /// <summary>
        /// Verify the player's account and change their status to verified.
        /// </summary>
        /// <param name="emailAddress">Email provided by the user.</param>
        /// <returns>True if it has been successfully verified and false if not.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
        /// <exception cref="EntityException">Thrown when there is no database.</exception>
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

        /// <summary>
        /// Assign a new verification token to a player. 
        /// </summary>
        /// <param name="emailAddress">Email of the user who will be assigned the token.</param>
        /// <param name="verificationToken">New token to be assigned.</param>
        /// <returns>True if the token was successfully assigned and false if not.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
        /// <exception cref="EntityException">Thrown when there is no database.</exception>
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

        /// <summary>
        /// Check that the token provided is the same as the one registered in the database.
        /// </summary>
        /// <param name="emailAddress">Email of the player associated with the token.</param>
        /// <param name="activationToken">Token to verify.</param>
        /// <returns>True if the token matches the one associated with the player and false if not.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
        /// <exception cref="EntityException">Thrown when there is no database.</exception>
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
