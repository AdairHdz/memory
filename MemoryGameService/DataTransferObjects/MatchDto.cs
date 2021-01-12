namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    /// <summary>
    /// The <c>MatchDto</c> class.
    /// It provides a set of properties to be passed in the
    /// communication between the services and the clients.
    /// </summary>
    public class MatchDto
    {
        /// <summary>
        /// The max number of players in the match.
        /// </summary>
        public int MaxNumberOfPlayers { get; set; }
        /// <summary>
        /// The CarDeck used in the match.
        /// </summary>
        public CardDeckDto CardDeckDto { get; set; }
        /// <summary>
        /// Username of the player who created the match.
        /// </summary>
        public string Host { get; set; }
        /// <summary>
        /// Indicates the status of the match.
        /// </summary>
        public bool HasStarted { get; set; }
        /// <summary>
        /// Instance of the lobby match.
        /// </summary>
        public ServiceLobby Lobby { get; set; }
        /// <summary>
        /// Total number of pairs that can be formed in with the CardDeck.
        /// </summary>
        public int TotalPairs { get; set; }

        /// <summary>
        /// Constructor of the class.
        /// </summary>
        public MatchDto()
        {
            Lobby = new ServiceLobby();
        }
    }
}
