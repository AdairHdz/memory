namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    public class PlayerMovementDto
    {
        public string Host { get; set; }
        public string Username { get; set; }
        public bool HasFormedAPair { get; set; }
        public int CardIndex { get; set; }
        public int MovementsLeft { get; set; }
    }
}
