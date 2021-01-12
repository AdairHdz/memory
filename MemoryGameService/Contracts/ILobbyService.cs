using System.Collections.Generic;
using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    /// <summary>
    /// The <c>Lobby</c> service.
    /// It offers the basic operations in a game lobby and some operations with the match players..
    /// The operations it contains are:
    /// <list type="bullet">
    /// <item>
    /// <term>GetActivePlayers</term>
    /// <description>Get the active players int the match lobby.</description>
    /// </item>
    /// <item>
    /// <term>JoinLobby</term>
    /// <description>Join tha new player to the lobby.</description>
    /// </item>
    /// <item>
    /// <term>LeaveLobby</term>
    /// <description>Remove player from the lobby.</description>
    /// </item>
    /// <item>
    /// <term>StartGame</term>
    /// <description>Starts the match.</description>
    /// </item>
    /// <item>
    /// <term>GetMatch</term>
    /// <description>Gat a specific match of the game.</description>
    /// </item>
    /// </list>
    /// </summary>
    [ServiceContract(SessionMode = SessionMode.Required,
        CallbackContract = typeof(ILobbyServiceCallback))]
    public interface ILobbyService
    {
        /// <summary>
        /// Joins a new player to a match lobby and notifies to the other players in the lobby.
        /// </summary>
        /// <param name="host">Name of the player who created the game.</param>
        /// <param name="username">Name of the new player</param>
        [OperationContract(IsOneWay = true)]
        void JoinLobby(string host, string username);
        /// <summary>
        /// Removes a player form the match lobby notifies to the other players in the lobby.
        /// </summary>
        /// <param name="host">Name of the player who created the game.</param>
        /// <param name="username">name of the player who left the lobby.</param>
        [OperationContract(IsOneWay = true)]
        void LeaveLobby(string host, string username);
        /// <summary>
        /// Gets a list of the active players in a specific match.
        /// </summary>
        /// <param name="host">Name of the player who created the game.</param>
        /// <returns>A list with the username of the active players int the match.</returns>
        [OperationContract]
        IList<string> GetActivePlayersInLobby(string host);
        /// <summary>
        /// Starts the game match, changes the match status to started and takes the players to the game window.
        /// </summary>
        /// <param name="host">Name of the player who created the game.</param>
        [OperationContract(IsOneWay = true)]
        void StartGame(string host);
    }

    /// <summary>
    /// The operations to be implemented on the client-side that consumes the LobbyService.
    /// </summary>
    [ServiceContract]
    public interface ILobbyServiceCallback
    {
        /// <summary>
        /// Notifies when a new player join to the lobby to all the connected clients in the callback channel.
        /// </summary>
        /// <param name="username">The new player username</param>
        [OperationContract(IsOneWay = true)]
        void NotifyNewPlayerEntered(string username);
        /// <summary>
        /// Notifies when a new player left the lobby to all the connected clients in the callback channel.
        /// </summary>
        /// <param name="username">The left player username</param>
        [OperationContract(IsOneWay = true)]
        void NotifyPlayerLeft(string username);
        /// <summary>
        /// Take all the players connected in the call back channel to the match window.
        /// </summary>
        /// <param name="playersInMatch">List of the players connected in the match</param>
        [OperationContract(IsOneWay = true)]
        void TakePlayersToMatchView(IList<string> playersInMatch);
        /// <summary>
        /// take all the players connected in the call back channel aou of the lobby.
        /// </summary>
        [OperationContract(IsOneWay = true)]
        void TakePlayersOutOfLobby();
    }
}
