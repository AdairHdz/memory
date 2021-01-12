using System.Data.Entity.Core;
using System.Data.SqlClient;
using System.ServiceModel;

namespace MemoryGameService.Contracts
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
    /// <term>VerifyActivationToken</term>
    /// <description>Check if the activation token provided is the same as the one 
    /// registered in the database</description>
    /// </item>
    /// <item>
    /// <term>VerifyRecoveryToken</term>
    /// <description>Check if the recovery token provided is the same as the one 
    /// registered in the database</description>
    /// </item>
    /// </list>
    /// </summary>
    [ServiceContract]
    public interface IAccountVerificationService
    {
        /// <summary>
        /// Verify the player's account and change their status to verified.
        /// </summary>
        /// <param name="emailAddress">Email provided by the user.</param>
        /// <returns>True if it has been successfully verified and false if not.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
        /// <exception cref="EntityException">Thrown when there is no database.</exception>
        [OperationContract]
        bool SetAccountAsVerified(string emailAddress);

        /// <summary>
        /// Assign a new verification token to a player. 
        /// </summary>
        /// <param name="emailAddress">Email of the user who will be assigned the token.</param>
        /// <param name="activationToken">New token to be assigned.</param>
        /// <returns>True if the token was successfully assigned and false if not.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
        /// <exception cref="EntityException">Thrown when there is no database.</exception>
        [OperationContract]
        bool AssignNewActivationToken(string emailAddress, string activationToken);
        
        /// <summary>
        /// Assign a new recovery token to a player's account. 
        /// </summary>
        /// <param name="emailAddress">Email of the user who will be assigned the token.</param>
        /// <param name="recoveryToken">New token to be assigned.</param>
        /// <returns>True if the token was successfully assigned and false if not.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
        /// <exception cref="EntityException">Thrown when there is no database.</exception>
        [OperationContract]
        bool AssignNewRecoveryToken(string emailAddress, string recoveryToken);

        /// <summary>
        /// Check that the activation token provided is the same as the one registered in the database.
        /// </summary>
        /// <param name="emailAddress">Email of the player associated with the token.</param>
        /// <param name="activationToken">Token to verify.</param>
        /// <returns>True if the token matches the one associated with the player and false if not.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
        /// <exception cref="EntityException">Thrown when there is no database.</exception>
        [OperationContract]
        bool VerifyActivationToken(string emailAddress, string activationToken);

        /// <summary>
        /// Check that the recovery token provided is the same as the one registered in the database.
        /// </summary>
        /// <param name="emailAddress">Email of the player associated with the token.</param>
        /// <param name="activationToken">Token to verify.</param>
        /// <returns>True if the token matches the one associated with the player and false if not.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
        /// <exception cref="EntityException">Thrown when there is no database.</exception>
        [OperationContract]
        bool VerifyRecoveryToken(string emailAddress, string activationToken);
    }
}
