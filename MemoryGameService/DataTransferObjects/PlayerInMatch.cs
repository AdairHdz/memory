using MemoryGameService.Contracts;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    public class PlayerInMatch
    {
        public string Username { get; set; }
        public int Score { get; set; } 
        public bool HasActiveTurn { get; set; } = false;
        public IMatchServiceCallback MatchServiceConnection { get; set; }
    }
}
