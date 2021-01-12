using MemoryGame.MemoryGameService.Faults;
using System.Data.Entity.Core;
using System.Data.SqlClient;
using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    /// <summary>
    /// The <c>IAccesibility</c> service.
    /// Is used to verify a player that tries to enter to the game.
    /// The operations it contains are:
    /// <list type="bullet">
    /// <item>
    /// <term>GetUserEmailAddress</term>
    /// <description>Registers the new player.</description>
    /// </item>
    /// <item>
    /// <term>GetUsername</term>
    /// <description>Verifies the email provided.</description>
    /// </item>
    /// <item>
    /// <term>IsVerified</term>
    /// <description>Verifies the username provided.</description>
    /// </item>
    /// <item>
    /// <term>ItsRegistered</term>
    /// <description>Verifies the username provided.</description>
    /// </item>
    /// <item>
    /// <term>GetPlayerCredentials</term>
    /// <description>Verifies the username provided.</description>
    /// </item>
    /// <item>
    /// <term>GetSalt</term>
    /// <description>Verifies the username provided.</description>
    /// </item>
    /// <item>
    /// <term>HasAccessRights</term>
    /// <description>Verifies the username provided.</description>
    /// </item>
    /// </list>
    /// </summary>
    [ServiceContract]
    public interface IAccessibilityService
    {
        /// <summary>
        /// Verifies if the player account has been verified to acces or not.
        /// </summary>
        /// <param name="username">Username associated with the account.</param>
        /// <returns>True if the account has been verified or flase if not.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
        /// <exception cref="EntityException">Thrown when there is no database.</exception>
        [OperationContract]
        bool IsVerified(string username);

        /// <summary>
        /// Verifies if a player has been registered or not.
        /// </summary>
        /// <param name="emailAddress">Email address of the player to verigy.</param>
        /// <returns>True if the player is already registered or flase if not.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
        /// <exception cref="EntityException">Thrown when there is no database.</exception>
        [OperationContract]
        bool ItsRegistered(string emailAddress);

        /// <summary>
        /// Gets the email address of a resitered player.
        /// </summary>
        /// <param name="username">Username of the player.</param>
        /// <returns>A string of the email address.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
        /// <exception cref="EntityException">Thrown when there is no database.</exception>
        [OperationContract]       
        string GetUserEmailAddress(string username);


        /// <summary>
        /// Gets the salt with which the password has been encrypted.
        /// </summary>
        /// <param name="username">Player's username to consult.</param>
        /// <returns>A stirng of the salt.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
        /// <exception cref="EntityException">Thrown when there is no database.</exception>
        [FaultContract(typeof(NonExistentUserFault))]
        [OperationContract]
        string GetSalt(string username);

        /// <summary>
        /// Verifies if the player has an account and acces to the game or not.
        /// </summary>
        /// <param name="username">Username of the player associated with the account.</param>
        /// <param name="password">Password of the player associated with the account.</param>
        /// <returns>True if the player has acces or false if not.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
        /// <exception cref="EntityException">Thrown when there is no database.</exception>
        [OperationContract]
        bool HasAccessRights(string username, string password);

        /// <summary>
        /// Gets the username of a registered players.
        /// </summary>
        /// <param name="emailAddress">Email of the player.</param>
        /// <returns>A string of the username.</returns>
        [OperationContract]
        string GetUsername(string emailAddress);
    }
}
