using System.Runtime.Serialization;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    /// <summary>
    /// The <c>PasswordModificationCredentialsDto</c> class.
    /// It is used to save information when a player ask for change his password.
    /// </summary>
    [DataContract]
    public class PasswordModificationCredentialsDto
    {
        /// <summary>
        /// Email address of the player who wnats to change his password.
        /// </summary>
        [DataMember]
        public string EmailAddress { get; set; }
        /// <summary>
        /// New password to associate with the account.
        /// </summary>
        [DataMember]
        public string NewPassword { get; set; }
        /// <summary>
        /// The binary salt to hash with the password.
        /// </summary>
        [DataMember]
        public string Salt { get; set; }
    }
}
