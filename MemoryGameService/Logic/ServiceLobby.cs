using MemoryGameService.Contracts;
using System.Collections.Generic;
using System.ServiceModel;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    /// <summary>
    /// The <c>Lobby</c> class.
    /// It has the methods to manipulate the players coneccted to a match lobby.
    /// The operations it contains are:
    /// <list type="bullet">
    /// <item>
    /// <term>AddPlayerToLobby</term>
    /// <description>Adds a player to the list of connected players in the lobby.</description>
    /// </item>
    /// <item>
    /// <term>RemovePlayerFromLobby</term>
    /// <description>Removes a player from the list of connected players in the lobby.</description>
    /// </item>
    /// <item>
    /// <term>GetPlayersConnectedToLobby</term>
    /// <description>Gets a list of the players connected to the lobby.</description>
    /// </item>
    /// <item>
    /// <term>GetUsernamesOfPlayersConnectedToLobby</term>
    /// <description>Gets a list of the usernames of the players connected to the lobby.</description>
    /// </item>
    /// <item>
    /// <term>NotifyPlayersMatchHasBeenDeleted</term>
    /// <description>Notifies the match has been deleted to all the players connected.</description>
    /// </item>
    /// <item>
    /// <term>NotifyOnePlayerLeftLobby</term>
    /// <description>Notifies a player left the lobby to all the connected players.</description>
    /// </item>
    /// <item>
    /// <term>NotifyNewPlayerEnteredLobby</term>
    /// <description>Notifies a new player enter in the lobby to all the connected players.</description>
    /// </item>
    /// </list>
    /// </summary>
    public class ServiceLobby
    {
        private IList<PlayerInLobby> _playersConnectedToLobby;

        /// <summary>
        /// Class constructor.
        /// </summary>
        public ServiceLobby()
        {
            _playersConnectedToLobby = new List<PlayerInLobby>();
        }

        /// <summary>
        /// Add a new player to the list of connected players in the lobby.
        /// </summary>
        /// <param name="host">Username of the player who created the match.</param>
        /// <param name="username">Username of the new player.</param>
        public void AddPlayerToLobby(string host, string username)
        {
            PlayerInLobby lobbyRequestDto = new PlayerInLobby()
            {
                Host = host,
                Username = username,
                Connection = OperationContext.Current.GetCallbackChannel<ILobbyServiceCallback>()
            };
            _playersConnectedToLobby.Add(lobbyRequestDto);
        }

        /// <summary>
        /// Removes a player from the list of connected players in the lobby.
        /// </summary>
        /// <param name="usernameOfPlayerToBeRemoved">Username of the player to remove.</param>
        public void RemovePlayerFromLobby(string usernameOfPlayerToBeRemoved)
        {
            foreach(var playerInLobby in _playersConnectedToLobby)
            {
                if (usernameOfPlayerToBeRemoved.Equals(playerInLobby.Username))
                {
                    _playersConnectedToLobby.Remove(playerInLobby);
                    break;
                }
            }
        }

        /// <summary>
        /// Gets a list of the players connected to the match lobby.
        /// </summary>
        /// <returns>A list of PlayerInLobby objects.</returns>
        public IList<PlayerInLobby> GetPlayersConnectedToLobby()
        {
            return _playersConnectedToLobby;
        }

        /// <summary>
        /// Gets a list of the players usernames connected to the match lobby.
        /// </summary>
        /// <returns>A string list of the usernames.</returns>
        public IList<string> GetUsernamesOfPlayersConnectedToLobby()
        {
            IList<string> usernamesOfPlayersConnectedToLobby = new List<string>();            
            foreach (var playerConnectedToLobby in _playersConnectedToLobby)
            {
                usernamesOfPlayersConnectedToLobby.Add(playerConnectedToLobby.Username);
            }
            return usernamesOfPlayersConnectedToLobby;
        }

        /// <summary>
        /// Notifies when the match has been deleted to all the players connected.S
        /// </summary>
        public void NotifyPlayersMatchHasBeenDeleted()
        {
            foreach (var playerInLobby in _playersConnectedToLobby)
            {
                var channel = playerInLobby.Connection;
                channel.TakePlayersOutOfLobby();
            }
        }

        /// <summary>
        /// Notifies when a player left the lobby to all the connected players.
        /// </summary>
        /// <param name="username">Username of the player who left the lobby.</param>
        public void NotifyOnePlayerLeftLobby(string username)
        {
            foreach (var playerInLobby in _playersConnectedToLobby)
            {
                var channel = playerInLobby.Connection;
                channel.NotifyPlayerLeft(username);
            }
        }

        /// <summary>
        /// Notifies when a player enter to the lobby to all the connected players.
        /// </summary>
        /// <param name="username">Username of th new player in lobby.</param>
        public void NotifyNewPlayerEnteredLobby(string username)
        {
            foreach (var playerInLobby in _playersConnectedToLobby)
            {
                var channel = playerInLobby.Connection;
                channel.NotifyNewPlayerEntered(username);
            }            
        }

    }
}
