using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;
using System.Collections.Generic;

namespace MemoryGameService.Services
{
    /// <inheritdoc/>
    public partial class MemoryGameService : ILobbyService
    {
        /// <inheritdoc/>
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

        /// <inheritdoc/>
        public void JoinLobby(string host, string username)
        {
            MatchDto match = GetMatch(host);
            if(match != null)
            {
                Lobby lobby = match.Lobby;
                lobby.AddPlayerToLobby(host, username);
                lobby.NotifyNewPlayerEnteredLobby(username);
            }        
        }

        /// <inheritdoc/>
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

        /// <inheritdoc/>
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
