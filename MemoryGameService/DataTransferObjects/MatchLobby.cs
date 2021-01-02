using System.Collections.Generic;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    public class MatchLobby
    {
        private IList<LobbyRequestDto> _playersConnectedToLobby;

        public MatchLobby()
        {
            _playersConnectedToLobby = new List<LobbyRequestDto>();
        }

        public void AddPlayerToLobby(LobbyRequestDto lobbyRequestDto)
        {
            _playersConnectedToLobby.Add(lobbyRequestDto);
        }

        public void RemovePlayerFromLobby(LobbyRequestDto lobbyRequestDto)
        {
            string usernameOfPlayerToBeRemoved = lobbyRequestDto.Username;
            foreach(var playerConnected in _playersConnectedToLobby)
            {
                if (usernameOfPlayerToBeRemoved.Equals(playerConnected.Username))
                {
                    _playersConnectedToLobby.Remove(playerConnected);
                    break;
                }
            }
        }

        public IList<LobbyRequestDto> GetLobbyRequests()
        {
            return _playersConnectedToLobby;
        }

    }
}
