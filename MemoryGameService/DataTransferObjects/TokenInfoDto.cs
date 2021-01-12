using System.Runtime.Serialization;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    /// <summary>
    /// The <c>TokenInfoDto</c> class.
    /// It is used to save the basic info when a player introduce a verify token..
    /// </summary>
    [DataContract]
    public class TokenInfoDto
    {
        /// <summary>
        /// Player username.
        /// </summary>
        [DataMember]
        public string Name { get; set; }
        /// <summary>
        /// Player email address.
        /// </summary>
        [DataMember]
        public string EmailAddress { get; set; }
        /// <summary>
        /// Generated token.
        /// </summary>
        [DataMember]
        public string Token { get; set; }
        /// <summary>
        /// The subject of the mail containing the verification token.
        /// </summary>
        [DataMember]
        public string Subject { get; set; }
        /// <summary>
        /// The body of the message containing the verification token.
        /// </summary>
        [DataMember]
        public string Body { get; set; }
    }
}
