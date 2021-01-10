using MemoryGameService.Contracts;
using System.Collections.Generic;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    public class PlayerInMatch
    {
        public string Username { get; set; }
        public int Score { get; set; } 
        public bool HasActiveTurn { get; set; } = false;
        public IMatchServiceCallback MatchServiceConnection { get; set; }
        public int ExpulsionVotes { get; set; }
        private IList<string> _playersVoted;
        private IList<int> _uncoveredCards;

        public PlayerInMatch()
        {
            _playersVoted = new List<string>();
            _uncoveredCards = new List<int>();
        }

        public IList<string> GetPlayersVoted()
        {
            return _playersVoted;
        }

        public void AddPlayerVoted(string playerUsername)
        {
            _playersVoted.Add(playerUsername);
        }

        public IList<int> GetUncoveredCards()
        {
            return _uncoveredCards;
        }

        public void AddUncoveredCard(int cardIndex)
        {
            _uncoveredCards.Add(cardIndex);
        }

        public void RemoveUncoveredCard()
        {
            int indexOfLastCard = _uncoveredCards.Count - 1;
            _uncoveredCards.Remove(_uncoveredCards[indexOfLastCard]);
        }
    }
}
