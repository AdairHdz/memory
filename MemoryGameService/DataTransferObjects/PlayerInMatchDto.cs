using System.Runtime.Serialization;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    /// <summary>
    /// The <c>PlayerInMatch</c> class.
    /// It has the methods to manipulate the infromatioin of the players connected to a match.
    /// The operations it contains are:
    /// <list type="bullet">
    /// <item>
    /// <term>GetPlayersVoted</term>
    /// <description>Gets a list of the players the player has voted for.</description>
    /// </item>
    /// <item>
    /// <term>AddPlayerVoted</term>
    /// <description>Adds a player username to the players voted list.</description>
    /// </item>
    /// <item>
    /// <term>GetUncoveredCards</term>
    /// <description>Gets a list of all the cards uncovered by the player.</description>
    /// </item>
    /// <item>
    /// <term>AddUncoveredCard</term>
    /// <description>Adds a card uncovered by the player.</description>
    /// </item>
    /// <item>
    /// <term>RemoveUncoveredCard</term>
    /// <description>Removes the last uncovered card in the list.</description>
    /// </item>
    /// </list>
    /// </summary>
    [DataContract]
    public class PlayerInMatchDto
    {
        /// <summary>
        /// Username of the player.
        /// </summary>
        [DataMember]
        public string Username { get; set; }
        /// <summary>
        /// Total score of the player.
        /// </summary>
        [DataMember]
        public int Score { get; set; }
        /// <summary>
        /// Verifies if the turn is active or not.
        /// </summary>
        [DataMember]
        public bool HasActiveTurn { get; set; } = false;
        /// <summary>
        /// Expulsion votes for the player.
        /// </summary>
        [DataMember]
        public int ExpulsionVotes { get; set; }

    }
}
