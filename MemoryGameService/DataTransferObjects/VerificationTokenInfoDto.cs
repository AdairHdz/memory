namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    /// <summary>
    /// The <c>VerificationTokenInfoDto</c> class.
    /// It is used to save the basic info when a player introduce a verify token..
    /// </summary>
    public class VerificationTokenInfoDto
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
        /// Verify token introduced.
        /// </summary>
        public string VerificationToken { get; set; }
    }
}
