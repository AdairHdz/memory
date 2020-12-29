using System;
using System.Collections.Generic;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    public class GameMatchConfigDto
    {
        public int MaxNumberOfPlayers { get; set; }
        public CardDeckDTO CardDeckDto { get; set; }
        public string Host { get; set; }
        public bool HasStarted { get; set; }

        private IList<LobbyRequestDto> _requests;

        public GameMatchConfigDto()
        {
            _requests = new List<LobbyRequestDto>();            
        }

        public void AddLobbyRequest(LobbyRequestDto lobbyRequestDto)
        {
            _requests.Add(lobbyRequestDto);
        }

        public void RemoveLobbyRequest(LobbyRequestDto lobbyRequestDto)
        {
            foreach(var lobbyRequest in _requests)
            {
                if (lobbyRequest.Username.Equals(lobbyRequestDto.Username))
                {
                    _requests.Remove(lobbyRequest);
                }
            }            
        }

        public int GetNumberOfPlayersConnected()
        {
            return _requests.Count;
        }

        public IList<string> GetPlayers()
        {
            IList<string> playersNames = new List<string>();
            foreach(var player in _requests)
            {
                playersNames.Add(player.Username);
            }
            return playersNames;
        }

        public IList<LobbyRequestDto> GetLobbyRequests()
        {
            return _requests;
        }

    }
}
