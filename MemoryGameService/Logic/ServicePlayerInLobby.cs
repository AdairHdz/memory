using MemoryGameService.Contracts;

namespace MemoryGameService.Logic
{
    /// <summary>
    /// The <c>ServicePlayerInLobby</c> class.
    /// It is used save the basic information of a player who joined the lobby of a match.
    /// </summary>
    public class ServicePlayerInLobby
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
