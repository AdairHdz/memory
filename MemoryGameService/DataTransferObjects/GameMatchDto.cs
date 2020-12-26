using System.Collections.Generic;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    public class GameMatchDto
    {
        public int MaxNumberOfPlayers { get; set; }
        public CardDeckDTO CardDeckDto { get; set; }
        public string Host { get; set; }
        public bool HasStarted { get; set; }

        private IList<string> _players;

        public GameMatchDto()
        {
            _players = new List<string>();            
        }

        public void AddNewPlayer(string username)
        {
            _players.Add(username);
        }

        public void RemovePlayer(string username)
        {
            _players.Remove(username);
        }

        public int GetNumberOfPlayersConnected()
        {
            return _players.Count;
        }

        public IList<string> GetPlayers()
        {
            return _players;
        }

    }
}
