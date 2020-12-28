using System.Collections.Generic;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    public class GameMatchDto
    {
        public int MaxNumberOfPlayers { get; set; }
        public CardDeckDTO CardDeckDto { get; set; }
        public string Host { get; set; }
        public bool HasStarted { get; set; }

        //private IList<string> _players;
        private IList<LobbyRequestDto> _players;

        public GameMatchDto()
        {
            _players = new List<LobbyRequestDto>();            
        }

        public void AddNewPlayer(LobbyRequestDto lobbyRequestDto)
        {
            _players.Add(lobbyRequestDto);
        }

        public void RemovePlayer(LobbyRequestDto lobbyRequestDto)
        {
            _players.Remove(lobbyRequestDto);
        }

        public int GetNumberOfPlayersConnected()
        {
            return _players.Count;
        }

        public IList<string> GetPlayers()
        {
            IList<string> playersNames = new List<string>();
            foreach(var player in _players)
            {
                playersNames.Add(player.Username);
            }
            return playersNames;
        }

        public IList<LobbyRequestDto> GetLobbyRequests()
        {
            return _players;
        }

    }
}
