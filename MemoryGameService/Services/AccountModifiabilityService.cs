using DataAccess;
using DataAccess.Entities;
using DataAccess.Units_of_work;
using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGame.MemoryGameService.Faults;
using MemoryGameService.Contracts;
using System.Data.SqlClient;
using System.ServiceModel;

namespace MemoryGameService.Services
{
    /// <summary>
    /// The <c>AccountModifiability</c> service.
    /// Is used to modify information in the player's account.
    /// The operations it contains are:
    /// <list type="bullet">
    /// <item>
    /// <term>ChangeUsername</term>
    /// <description>Change the registered name of the player for a new one.</description>
    /// </item>
    /// <item>
    /// <term>SetNewPassword</term>
    /// <description>Change the player's registered password for a new one.</description>
    /// </item>
    /// </list>
    /// </summary>
    public partial class MemoryGameService : IAccountModifiabilityService
    {
        /// <summary>
        /// Change the name registered on the player's account to a new one.
        /// </summary>
        /// <param name="emailAddress">Email of the player to be modified.</param>
        /// <param name="newUsername">New user name to be assigned.</param>
        /// <returns>True if modified successfully and false if not.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
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
        /// Change the password registered on the player's account to a new one.
        /// </summary>
        /// <param name="passwordModificationCredentials">It contains the email of the player to modify, 
        /// the new password and the encryption Salt.</param>
        /// <returns>True if modified successfully and false if not.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
        public bool SetNewPassword(PasswordModificationCredentialsDto passwordModificationCredentials)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            string emailAddress = passwordModificationCredentials.EmailAddress;
            string salt = passwordModificationCredentials.Salt;
            string newPassword = passwordModificationCredentials.NewPassword;
            try
            {
                Account account = unitOfWork.Accounts.Get(emailAddress);
                if(account != null)
                {
                    account.Password = newPassword;
                    account.Salt = salt;
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
    }
}
