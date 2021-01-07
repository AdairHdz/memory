using MemoryGameService.Contracts;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    public class PlayerInLobby
    {
        public string Host { get; set; }
        public string Username { get; set; }
        public ILobbyServiceCallback Connection { get; set; }
    }
}
