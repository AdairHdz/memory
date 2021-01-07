using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;
using System.Collections.Generic;

namespace MemoryGameService.Services
{
    public partial class MemoryGameService : ILobbyService
    {
        public IList<string> GetActivePlayersInLobby(string host)
        {            
            MatchDto match = GetMatch(host);
            Lobby lobby = match.Lobby;
            IList<string> activePlayersFromMatch = lobby.GetUsernamesOfPlayersConnectedToLobby();
            return activePlayersFromMatch;
        }

        public void JoinLobby(string host, string username)
        {
            MatchDto match = GetMatch(host);
            Lobby lobby = match.Lobby;
            lobby.AddPlayerToLobby(host, username);
            lobby.NotifyNewPlayerEnteredLobby(username);
        }

        public void LeaveLobby(string host, string username)
        {            
            MatchDto match = GetMatch(host);
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

        public void StartGame(string host)
        {
            MatchDto match = GetMatch(host);
            match.StartMatch();            
        }

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
