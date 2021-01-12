using MemoryGame.MemoryGameService.DataTransferObjects;
using System.ServiceModel;
using System;
using System.Data.SqlClient;

namespace MemoryGameService.Contracts
{
    /// <summary>
    /// The <c>PlayerRegistry</c> service.
    /// Is used to register a new player in the database of the game.
    /// The operations it contains are:
    /// <list type="bullet">
    /// <item>
    /// <term>RegistryNewPlayer</term>
    /// <description>Registers the new player.</description>
    /// </item>
    /// <item>
    /// <term>EmailAddressIsAvailable</term>
    /// <description>Verifies the email provided.</description>
    /// </item>
    /// <item>
    /// <term>UserNameIsAvailable</term>
    /// <description>Verifies the username provided.</description>
    /// </item>
    /// </list>
    /// </summary>
    [ServiceContract]
    public interface IPlayerRegistryService
    {
        /// <summary>
        /// Registers the new players in the game database.
        /// </summary>
        /// <param name="playerDTO">Contains basic player data.</param>
        /// <param name="salt">The binary salt to hash with the password.</param>
        /// <returns>True if the player is registered and false if not.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
        /// <exception cref="Exception">Thrown when a default exception is catched.</exception>
        [OperationContract]
        bool RegisterNewPlayer(PlayerDto playerDTO, string salt);

        /// <summary>
        /// Verify that the email provided is not already registered in the database.
        /// </summary>
        /// <param name="emailAddress">The email provided by the user.</param>
        /// <returns>True if the email is available and false if not.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
        [OperationContract]
        bool EmailAddressIsAvailable(string emailAddress);

        /// <summary>
        /// Verify that the username provided is not already registered in the database.
        /// </summary>
        /// <param name="username">The username provided by the user.</param>
        /// <returns>True if the email is available and false if not.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
        [OperationContract]
        bool UserNameIsAvailable(string username);
    }
}
