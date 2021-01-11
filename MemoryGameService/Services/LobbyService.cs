using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;
using System.Collections.Generic;

namespace MemoryGameService.Services
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
    public partial class MemoryGameService : ILobbyService
    {
        /// <summary>
        /// Gets a list of the active players in a specific match.
        /// </summary>
        /// <param name="host">Name of the player who created the game.</param>
        /// <returns>A list with the username of the active players int the match.</returns>
        public IList<string> GetActivePlayersInLobby(string host)
        {            
            MatchDto match = GetMatch(host);
            if(match != null)
            {
                Lobby lobby = match.Lobby;
                IList<string> activePlayersFromMatch = lobby.GetUsernamesOfPlayersConnectedToLobby();
                return activePlayersFromMatch;
            }
            //throw new NonExistentMatch
            throw new System.Exception();
        }

        /// <summary>
        /// Joins a new player to a match lobby and notifies to the other players in the lobby.
        /// </summary>
        /// <param name="host">Name of the player who created the game.</param>
        /// <param name="username">Name of the new player</param>
        public void JoinLobby(string host, string username)
        {
            MatchDto match = GetMatch(host);
            if(match != null)
            {
                Lobby lobby = match.Lobby;
                lobby.AddPlayerToLobby(host, username);
                lobby.NotifyNewPlayerEnteredLobby(username);
            }
            else
            {
                //Here we could log the error
            }            
        }

        /// <summary>
        /// Removes a player form the match lobby notifies to the other players in the lobby.
        /// </summary>
        /// <param name="host">Name of the player who created the game.</param>
        /// <param name="username">name of the player who left the lobby.</param>
        public void LeaveLobby(string host, string username)
        {            
            MatchDto match = GetMatch(host);
            if(match != null)
            {
                Lobby lobby = match.Lobby;
                lobby.RemovePlayerFromLobby(username);
                if (host.Equals(username))
                {
                    lobby.NotifyPlayersMatchHasBeenDeleted();
                    _matches.Remove(match);
                }
                else
                {
                    lobby.NotifyOnePlayerLeftLobby(username);
                }
            }            
        }

        /// <summary>
        /// Starts the game match, changes the match status to started and takes the players to the game window.
        /// </summary>
        /// <param name="host">Name of the player who created the game.</param>
        public void StartGame(string host)
        {
            MatchDto match = GetMatch(host);
            if(match != null)
            {
                match.StartMatch();
            }
            
        }

        /// <summary>
        /// Gets the match that matches the username provided.
        /// </summary>
        /// <param name="host">Name of the player who created the game.</param>
        /// <returns>A specific matchDto object</returns>
        private MatchDto GetMatch(string host)
        {
            MatchDto gameMatch = null;
            foreach (var match in _matches)
            {
                if (match.Host.Equals(host))
                {
                    gameMatch = match;
                    break;
                }
            }
            return gameMatch;
        }
    }
}
