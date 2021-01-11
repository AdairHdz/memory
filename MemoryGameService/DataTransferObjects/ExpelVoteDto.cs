using System.Runtime.Serialization;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    /// <summary>
    /// The <c>ExpelVoteDto</c> class.
    /// It is used to save information when voting for the expulsion of a player.
    /// </summary>
    [DataContract]
    public class ExpelVoteDto
    {
        /// <summary>
        /// Name of the gost of the match.
        /// </summary>
        [DataMember]
        public string Host { get; set; }
        /// <summary>
        /// Name of the player who made the vote.
        /// </summary>
        [DataMember]
        public string UsernameOfExpelPlayer { get; set; }
        /// <summary>
        /// Name of the player that was voted for.
        /// </summary>
        [DataMember]
        public string UsernameOfVoterPlayer { get; set; }
    }
}
