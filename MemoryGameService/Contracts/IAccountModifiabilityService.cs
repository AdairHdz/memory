using MemoryGame.MemoryGameService.DataTransferObjects;
using System.ServiceModel;
using System.Data.Entity.Core;
using System.Data.SqlClient;

namespace MemoryGameService.Contracts
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
    [ServiceContract]
    public interface IAccountModifiabilityService
    {
        /// <summary>
        /// Change the password registered on the player's account to a new one.
        /// </summary>
        /// <param name="passwordModificationCredentials">It contains the email of the player to modify, 
        /// the new password and the encryption Salt.</param>
        /// <returns>True if modified successfully and false if not.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
        /// <exception cref="EntityException">Thrown when there is no database.</exception>
        [OperationContract]
        bool SetNewPassword(PasswordModificationCredentialsDto passwordModificationCredentials);

        /// <summary>
        /// Change the name registered on the player's account to a new one.
        /// </summary>
        /// <param name="emailAddress">Email of the player to be modified.</param>
        /// <param name="newUsername">New user name to be assigned.</param>
        /// <returns>True if modified successfully and false if not.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
        /// <exception cref="EntityException">Thrown when there is no database.</exception>
        [OperationContract]
        bool ChangeUsername(string emailAddress, string newUsername);
    }
}
