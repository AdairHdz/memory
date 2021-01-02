using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    public class MatchLobbyDto
    {
        private IList<LobbyRequestDto> _playersConnectedToLobby;

        public MatchLobbyDto()
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
