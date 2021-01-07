using MemoryGameService.Contracts;
using System.Collections.Generic;
using System.ServiceModel;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    public class Lobby
    {
        private IList<PlayerInLobby> _playersConnectedToLobby;

        public Lobby()
        {
            _playersConnectedToLobby = new List<PlayerInLobby>();
        }

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

        public IList<PlayerInLobby> GetPlayersConnectedToLobby()
        {
            return _playersConnectedToLobby;
        }

        public IList<string> GetUsernamesOfPlayersConnectedToLobby()
        {
            IList<string> usernamesOfPlayersConnectedToLobby = new List<string>();            
            foreach (var playerConnectedToLobby in _playersConnectedToLobby)
            {
                usernamesOfPlayersConnectedToLobby.Add(playerConnectedToLobby.Username);
            }
            return usernamesOfPlayersConnectedToLobby;
        }

        public void NotifyPlayersMatchHasBeenDeleted()
        {
            foreach (var playerInLobby in _playersConnectedToLobby)
            {
                var channel = playerInLobby.Connection;
                channel.TakePlayersOutOfLobby();
            }
        }

        public void NotifyOnePlayerLeftLobby(string username)
        {
            foreach (var playerInLobby in _playersConnectedToLobby)
            {
                var channel = playerInLobby.Connection;
                channel.NotifyPlayerLeft(username);
            }
        }

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
