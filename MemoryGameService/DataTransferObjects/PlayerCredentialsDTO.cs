using System.Runtime.Serialization;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    /// <summary>
    /// The <c>PlayerCredentialsDto</c> class.
    /// It is used to verify the acces of a player to the game.
    /// </summary>
    [DataContract]
    public class PlayerCredentialsDTO
    {
        /// <summary>
        /// Provided username.
        /// </summary>
        [DataMember]
        public string Username { get; set; }
        /// <summary>
        /// Provided Email address.
        /// </summary>
        [DataMember]
        public string EmailAddress { get; set; }
        /// <summary>
        /// Provided password
        /// </summary>
        [DataMember]
        public string Password { get; set; }
    }
}
