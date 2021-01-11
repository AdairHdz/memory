using System;
using System.Collections.Generic;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    /// <summary>
    /// The <c>MatchDto</c> class.
    /// It has the methods to manipulate the match information.
    /// The operations it contains are:
    /// <list type="bullet">
    /// <item>
    /// <term>GetPlayersConnectedToMatch</term>
    /// <description>Gets a list of the players connected to the match.</description>
    /// </item>
    /// <item>
    /// <term>GetUsernamesOfPlayersConnectedToMatch</term>
    /// <description>Gets a list of the usernames of the players connected to the match.</description>
    /// </item>
    /// <item>
    /// <term>GetPlayer</term>
    /// <description>Gets a specific player connected in the match.</description>
    /// </item>
    /// <item>
    /// <item>
    /// <term>AddPlayer</term>
    /// <description>Adds a player to the list of connected players in the match.</description>
    /// </item>
    /// <item>
    /// <term>StartMatch</term>
    /// <description>Starts the match with the connected players.</description>
    /// </item>
    /// <item>
    /// <term>GetPlayerWithBestScore</term>
    /// <description>Get the player with the best score in the matchS.</description>
    /// </item>
    /// <item>
    /// <term>AddExpelVote</term>
    /// <description>Adds a expel vote to a player.</description>
    /// </item>
    /// <item>
    /// <term>RemovePlayer</term>
    /// <description>Removes a player from the list of connected players in the match.</description>
    /// </item>
    /// <item>
    /// <term>GetPlyerWithActiveTurn</term>
    /// <description>Gets the player with the active turn in the match.</description>
    /// </item>
    /// </list>
    /// </summary>
    public class MatchDto
    {
        /// <summary>
        /// The max number of players in the match.
        /// </summary>
        public int MaxNumberOfPlayers { get; set; }
        /// <summary>
        /// The CarDeck used in the match.
        /// </summary>
        public CardDeckDTO CardDeckDto { get; set; }
        /// <summary>
        /// Username of the player who created the match.
        /// </summary>
        public string Host { get; set; }
        /// <summary>
        /// Indicates the status of the match.
        /// </summary>
        public bool HasStarted { get; set; }
        /// <summary>
        /// Instance of the lobby match.
        /// </summary>
        public Lobby Lobby { get; set; }
        /// <summary>
        /// List of the players connected to the match.
        /// </summary>
        private IList<PlayerInMatch> _players;
        /// <summary>
        /// Total number of pairs that can be formed in with the CardDeck.
        /// </summary>
        public int TotalPairs { get; set; }

        /// <summary>
        /// Constructor of the class.
        /// </summary>
        public MatchDto()
        {
            Lobby = new Lobby();
            _players = new List<PlayerInMatch>();
        }

        /// <summary>
        /// Gets a list of the players connected to the match.
        /// </summary>
        /// <returns>A list of PlayerInMatch objects.</returns>
        public IList<PlayerInMatch> GetPlayersConnectedToMatch()
        {            
            return _players;
        }

        /// <summary>
        /// Gets a list of the players usernames connected to the match.
        /// </summary>
        /// <returns>A string list with the usernames.</returns>
        public IList<string> GetUsernamesOfPlayersConnectedToMatch()
        {
            IList<string> usernamesOfPlayersConnectedToMatch = new List<string>();
            foreach(var player in _players)
            {
                usernamesOfPlayersConnectedToMatch.Add(player.Username);
            }
            return usernamesOfPlayersConnectedToMatch;
        }

        /// <summary>
        /// Adds a player to the list of players connected to the match.
        /// </summary>
        /// <param name="player">Contains the player information.</param>
        public void AddPlayer(PlayerInMatch player)
        {
            _players.Add(player);
        }

        /// <summary>
        /// Gets a specific player connected in the match by the username given.
        /// </summary>
        /// <param name="username">Username of the player to get.</param>
        /// <returns>A PlayerInMatch object.</returns>
        public PlayerInMatch GetPlayer(string username)
        {
            PlayerInMatch playerRetrieved = null;
            foreach(var player in _players)
            {
                if (player.Username.Equals(username))
                {
                    return player;
                }                
            }
            return playerRetrieved;
        }

        /// <summary>
        /// Starts the match and take the players connected to a lobby to the Match window.
        /// </summary>
        public void StartMatch()
        {            
            IList<PlayerInLobby> playersConnectedToLobby = Lobby.GetPlayersConnectedToLobby();
            IList<string> usernamesOfPlayersConnectedToLobby = Lobby.GetUsernamesOfPlayersConnectedToLobby();
            foreach (var playerInLobby in playersConnectedToLobby)
            {
                var channel = playerInLobby.Connection;
                channel.TakePlayersToMatchView(usernamesOfPlayersConnectedToLobby);
            }
            HasStarted = true;
        }

        /// <summary>
        /// Gets the player with the best score in the match.
        /// </summary>
        /// <returns>A PlayerInMatch object.</returns>
        public PlayerInMatch GetPlayerWithBestScore()
        {
            PlayerInMatch playerWithBestScore = _players[0];

            for(int currentIndex = 0; currentIndex < _players.Count - 1; currentIndex++)
            {
                if(playerWithBestScore.Score < _players[currentIndex + 1].Score)
                {
                    playerWithBestScore = _players[currentIndex + 1];
                }
            }
            return playerWithBestScore;
        }

        /// <summary>
        /// Adds a expel vote to a player.
        /// </summary>
        /// <param name="playerUsername">Username of the player to whom the vote will be added.</param>
        /// <returns>A integer with the total votes of the player.</returns>
        public int AddExpelVote(string playerUsername)
        {
            int playerExpelVotes = 0;
            foreach (var player in _players)
            {
                if (player.Username.Equals(playerUsername))
                {
                    player.ExpulsionVotes++;
                    playerExpelVotes = player.ExpulsionVotes;
                }
            }

            return playerExpelVotes;
        }

        /// <summary>
        /// Removes a player from the list of connected players in the match.
        /// </summary>
        /// <param name="playerUsername">Username of the player to remove.</param>
        public void RemovePlayer(string playerUsername)
        {
            PlayerInMatch playerToRemove = this.GetPlayer(playerUsername);
            _players.Remove(playerToRemove);
        }

        /// <summary>
        /// Get the playuer with the active turn in the match form the list of connected players.
        /// </summary>
        /// <returns>A PlayerInMatch Object</returns>
        public PlayerInMatch GetPlyerWithActiveTurn()
        {
            PlayerInMatch playerWithActiveTurn = null;
            foreach (var player in _players)
            {
                if (player.HasActiveTurn)
                {
                    playerWithActiveTurn = player;
                }
            }

            return playerWithActiveTurn;
        }

    }
}
