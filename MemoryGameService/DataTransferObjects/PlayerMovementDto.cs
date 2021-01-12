using System.Runtime.Serialization;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    /// <summary>
    /// The <c>PlayerMovementDto</c> class.
    /// It is used to save the inforation of a player that takes his turn.
    /// </summary>
    [DataContract]
    public class PlayerMovementDto
    {
        /// <summary>
        /// Username of the player who created the match. 
        /// </summary>
        [DataMember]
        public string Host { get; set; }
        /// <summary>
        /// Username of the player who take his turn.
        /// </summary>
        [DataMember]
        public string Username { get; set; }
        /// <summary>
        /// Atribute to verifiy if the player has formed a pair with the cards uncovered.
        /// </summary>
        [DataMember]
        public bool HasFormedAPair { get; set; }
        /// <summary>
        /// Save the card index of the uncovered card by the player.
        /// </summary>
        [DataMember]
        public int CardIndex { get; set; }
        /// <summary>
        /// atribute to verify the movements thath the player has left.
        /// </summary>
        [DataMember]
        public int MovementsLeft { get; set; }
    }
}
