namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    /// <summary>
    /// The <c>PlayerMovementDto</c> class.
    /// It is used to save the inforation of a player that takes his turn.
    /// </summary>
    public class PlayerMovementDto
    {
        /// <summary>
        /// Username of the player who created the match. 
        /// </summary>
        public string Host { get; set; }
        /// <summary>
        /// Username of the player who take his turn.
        /// </summary>
        public string Username { get; set; }
        /// <summary>
        /// Atribute to verifiy if the player has formed a pair with the cards uncovered.
        /// </summary>
        public bool HasFormedAPair { get; set; }
        /// <summary>
        /// Save the card index of the uncovered card by the player.
        /// </summary>
        public int CardIndex { get; set; }
        /// <summary>
        /// atribute to verify the movements thath the player has left.
        /// </summary>
        public int MovementsLeft { get; set; }
    }
}
