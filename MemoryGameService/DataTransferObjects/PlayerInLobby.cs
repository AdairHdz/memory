using MemoryGameService.Contracts;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    /// <summary>
    /// The <c>PlayerInLobbyDto</c> class.
    /// It is used save the basic information of a player wwho joined the lobby of a match.
    /// </summary>
    public class PlayerInLobby
    {
        /// <summary>
        /// Username of the player who created the match.
        /// </summary>
        public string Host { get; set; }
        /// <summary>
        /// Username of the player who joined the lobby.
        /// </summary>
        public string Username { get; set; }
        /// <summary>
        /// The callback connection of the player.
        /// </summary>
        public ILobbyServiceCallback Connection { get; set; }
    }
}
