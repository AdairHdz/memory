using System.Runtime.Serialization;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    /// <summary>
    /// The <c>PlayerDto</c> class.
    /// It is used to map the information of a Player entity.
    /// </summary>
    [DataContract]
    public class PlayerDTO
    {
        /// <summary>
        /// Player username.
        /// </summary>
        [DataMember]
        public string Username { get; set; }
        /// <summary>
        /// Player email address.
        /// </summary>
        [DataMember]
        public string EmailAddress { get; set; }
        /// <summary>
        /// Player password.
        /// </summary>
        [DataMember]
        public string Password { get; set; }
        /// <summary>
        /// Player verefication token.
        /// </summary>
        [DataMember]
        public string VerificationToken { get; set; }
    }
}
