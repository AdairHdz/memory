using MemoryGameService.Contracts;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    public class PlayerInMatchDto
    {
        public string Username { get; set; }
        public int Score { get; set; } = 0;
        public bool HasActiveTurn { get; set; } = false;
        public IMatchServiceCallback Connection { get; set; }
    }
}
