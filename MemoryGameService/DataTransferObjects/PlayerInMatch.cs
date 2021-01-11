using MemoryGameService.Contracts;
using System.Collections.Generic;

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
    public class PlayerInMatch
    {
        /// <summary>
        /// Username of the player.
        /// </summary>
        public string Username { get; set; }
        /// <summary>
        /// Total score of the player.
        /// </summary>
        public int Score { get; set; } 
        /// <summary>
        /// Verifies if the turn is active or not.
        /// </summary>
        public bool HasActiveTurn { get; set; } = false;
        /// <summary>
        /// The callback connection of the player.
        /// </summary>
        public IMatchServiceCallback MatchServiceConnection { get; set; }
        /// <summary>
        /// Expulsion votes for the player.
        /// </summary>
        public int ExpulsionVotes { get; set; }
        /// <summary>
        /// List of the players the player has voted for.
        /// </summary>
        private IList<string> _playersVoted;
        /// <summary>
        /// List of all the uncovered cards by the player.
        /// </summary>
        private IList<int> _uncoveredCards;

        /// <summary>
        /// Constructor of the class.
        /// </summary>
        public PlayerInMatch()
        {
            _playersVoted = new List<string>();
            _uncoveredCards = new List<int>();
        }

        /// <summary>
        /// Gets the list of the players the players has voted for.
        /// </summary>
        /// <returns>A string list wt¿ith the usernames.</returns>
        public IList<string> GetPlayersVoted()
        {
            return _playersVoted;
        }

        /// <summary>
        /// Adds a player username to the players voted list.
        /// </summary>
        /// <param name="playerUsername">Username of the new player voted.</param>
        public void AddPlayerVoted(string playerUsername)
        {
            _playersVoted.Add(playerUsername);
        }

        /// <summary>
        /// Gets a list of all the cards uncovered by the player.
        /// </summary>
        /// <returns>A int list with the indexes of the cards.</returns>
        public IList<int> GetUncoveredCards()
        {
            return _uncoveredCards;
        }

        /// <summary>
        /// Adds a new card uncovered by the player.
        /// </summary>
        /// <param name="cardIndex">New card uncovered index.</param>
        public void AddUncoveredCard(int cardIndex)
        {
            _uncoveredCards.Add(cardIndex);
        }

        /// <summary>
        /// Removes the last card in the uncovered card list.
        /// </summary>
        public void RemoveUncoveredCard()
        {
            int indexOfLastCard = _uncoveredCards.Count - 1;
            _uncoveredCards.Remove(_uncoveredCards[indexOfLastCard]);
        }
    }
}
