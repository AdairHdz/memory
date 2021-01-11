using DataAccess;
using DataAccess.Entities;
using DataAccess.Units_of_work;
using MemoryGame.MemoryGameService.Faults;
using MemoryGameService.Contracts;
using System.Data.SqlClient;
using System.ServiceModel;

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

        /// <summary>
        /// Assign a new verification token to a player. 
        /// </summary>
        /// <param name="emailAddress">Email of the user who will be assigned the token.</param>
        /// <param name="verificationToken">New token to be assigned.</param>
        /// <returns>True if the token was successfully assigned and false if not.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
        public bool AssignNewVerificationToken(string emailAddress, string verificationToken)
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

        /// <summary>
        /// Check that the token provided is the same as the one registered in the database.
        /// </summary>
        /// <param name="emailAddress">Email of the player associated with the token.</param>
        /// <param name="verificationToken">Token to verify.</param>
        /// <returns>True if the token matches the one associated with the player and false if not.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
        public bool VerifyToken(string emailAddress, string verificationToken)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                Account retrievedAccount = unitOfWork.Accounts.FindFirstOccurence(account => account.EmailAddress == emailAddress && account.ActivationToken == verificationToken);
                if(retrievedAccount != null)
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
