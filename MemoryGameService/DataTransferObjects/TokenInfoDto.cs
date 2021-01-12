namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    /// <summary>
    /// The <c>VerificationTokenInfoDto</c> class.
    /// It is used to save the basic info when a player introduce a verify token..
    /// </summary>
    public class TokenInfoDto
    {
        /// <summary>
        /// Player username.
        /// </summary>
        public string Name { get; set; } 
        /// <summary>
        /// Player email address.
        /// </summary>
        public string EmailAddress { get; set; }
        /// <summary>
        /// Generated token.
        /// </summary>
        public string Token { get; set; }
        /// <summary>
        /// The subject of the mail containing the verification token.
        /// </summary>
        public string Subject { get; set; }
        /// <summary>
        /// The body of the message containing the verification token.
        /// </summary>
        public string Body { get; set; }
    }
}
