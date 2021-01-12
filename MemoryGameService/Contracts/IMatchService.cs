using MemoryGame.MemoryGameService.DataTransferObjects;
using System.Collections.Generic;
using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    /// <summary>
    /// The <c>Match</c> service.
    /// Is used to register a new player in the database of the game.
    /// The operations it contains are:
    /// <list type="bullet">
    /// <item>
    /// <term>EnterMatch</term>
    /// <description>Add the players to a list of coneccted players.</description>
    /// </item>
    /// <item>
    /// <term>GetPlayersConnectedToMatch</term>
    /// <description>Gets a list of the players connected in the game.</description>
    /// </item>
    /// <item>
    /// <term>NotifyCardWasUncoveredd</term>
    /// <description>Flips a card clicked by the player.</description>
    /// </item>
    /// <item>
    /// <term>NotifyMatchHasEnded</term>
    /// <description>Notifies players that the match has ended.</description>
    /// </item>
    /// <item>
    /// <term>EndTurn</term>
    /// <description>Ends one player's turn to pass it on to the next.</description>
    /// </item>
    /// <item>
    /// <term>LeaveMatch</term>
    /// <description>Remove a player from the list of connected players.</description>
    /// </item>
    /// <item>
    /// <term>ExpelPlayer</term>
    /// <description>Expels a player from the list of connected players according to the votes.</description>
    /// </item>
    /// <item>
    /// <term>GetUsernamesOfPlayersConnectedToMatch</term>
    /// <description>Gets a list of the names of the players connected to the match.</description>
    /// </item>
    /// <item>
    /// <term>GetPlayersVoted</term>
    /// <description>Get a list of the names of the players a player has already voted for.</description>
    /// </item>
    /// <item>
    /// <term>ChangeTurn</term>
    /// <description>Make a turn assignment for a new player.</description>
    /// </item>
    /// <item>
    /// <term>RemovePairs</term>
    /// <description>Subtract an amount from the total pairs formed in the match.</description>
    /// </item>
    /// </list>
    /// </summary>
    [ServiceContract(CallbackContract = typeof(IMatchServiceCallback))]
    public interface IMatchService
    {
        /// <summary>
        /// Flips a card clicked by the player and and notifies all connected players.
        /// </summary>
        /// <param name="playerMovementDto">Contains the data about the player's turn.</param>
        [OperationContract(IsOneWay = true)]
        void NotifyCardWasUncoveredd(PlayerMovementDto playerMovementDto);

        /// <summary>
        /// Create a list of connected players in the match mapping players on PlayerInMatch type objects.
        /// </summary>
        /// <param name="host">Name of the player who created the match.</param>
        /// <param name="username">Name of the player to be added to the list.</param>
        [OperationContract(IsOneWay = true)]
        void EnterMatch(string host, string username);

        /// <summary>
        /// Ends the turn taken by a player and checks if he has formed a pair of cards.
        /// </summary>
        /// <param name="host">Name of the player who created the match.</param>
        /// <param name="username">Name of the player who has taken the turn.</param>
        /// <param name="cardPairDto">The pair of cards he has flipped.</param>
        [OperationContract(IsOneWay = true)]
        void EndTurn(string host, string username, CardPairDto cardPairDto);

        /// <summary>
        /// Gets a list of PlayerInMatch objects of the players connected to the game.
        /// </summary>
        /// <param name="host">Name of the player who created the match.</param>
        /// <returns>A list of PlayerInMatch objects.</returns>
        [OperationContract]
        IList<PlayerInMatch> GetPlayersConnectedToMatch(string host);

        /// <summary>
        /// Notifies all connected players that the game is over and the player who has won.
        /// </summary>
        /// <param name="host">Name of the player who created the match.</param>
        [OperationContract(IsOneWay = true)]
        void NotifyMatchHasEnded(string host);

        /// <summary>
        /// Allows a player to leave the game and removes him from the list of connected players.
        /// </summary>
        /// <param name="host">Name of the player who created the match.</param>
        /// <param name="username">Name of the player who leaves the match.</param>
        [OperationContract(IsOneWay = true)]
        void LeaveMatch(string host, string username);

        /// <summary>
        /// Allows a player to vote for the expulsion of another player, who will be 
        /// voted out by collecting a majority of votes.
        /// </summary>
        /// <param name="expelVote">It contains the expulsion data: Name of the player to 
        /// be expelled, name of the player voting and the host name of the game</param>
        [OperationContract(IsOneWay = true)]
        void ExpelPlayer(ExpelVoteDto expelVote);

        /// <summary>
        /// Gets a list of usernames of the players connected to the game.
        /// </summary>
        /// <param name="host">Name of the player who created the match.</param>
        /// <returns>A list of strings.</returns>
        [OperationContract]
        IList<string> GetUsernamesOfPlayersConnectedToMatch(string host);

        /// <summary>
        /// Get a list of the names of the players a player has already voted for.
        /// </summary>
        /// <param name="host">Name of the player who created the match.</param>
        /// <param name="username">Name of the player associated to the list to be retriev.</param>
        /// <returns>A list of strings of the user names for which the player has voted.</returns>
        [OperationContract]
        IList<string> GetPlayersVoted(string host, string username);
    }

    /// <summary>
    /// The operations to be implemented on the client-side that consumes the MatchService.
    /// </summary>
    [ServiceContract]
    public interface IMatchServiceCallback
    {
        /// <summary>
        /// Flip the card clicked by a user to all the connected clients in the callback channel.
        /// </summary>
        /// <param name="cardIndex">Index of the uncovered card</param>
        [OperationContract(IsOneWay = true)]
        void UncoverCardd(int cardIndex);

        /// <summary>
        /// Shows the new player with active turn to to all the connected clients in the callback channel.
        /// </summary>
        /// <param name="username">Theusername of the new player with active turn</param>
        /// <param name="cardPairDto">The cards uncovered by the last player with active turn that do not form a pair</param>
        [OperationContract(IsOneWay = true)]
        void NotifyTurnHasEnded(string username, CardPairDto cardPairDto);

        /// <summary>
        /// Show the winner player to to all the connected clients in the callback channel.
        /// </summary>
        /// <param name="winner"></param>
        [OperationContract(IsOneWay = true)]
        void ShowWinners(string winner);

        /// <summary>
        /// Notifies when a player was expel to to all the connected clients in the callback channel.
        /// </summary>
        /// <param name="expelPlayerUsername"></param>
        /// <param name="cardsUncovered"></param>
        [OperationContract(IsOneWay = true)]
        void NotifyPlayerWasExpel(string expelPlayerUsername, IList<int> cardsUncovered);

        /// <summary>
        /// Ends the turn of an expel or left match player to to all the connected clients in the callback channel.
        /// </summary>
        /// <param name="nextPlayerUsername"></param>
        [OperationContract(IsOneWay = true)]
        void EndTurnOfExpelPlayer(string nextPlayerUsername);

        /// <summary>
        /// Notifies when a player left the match to to all the connected clients in the callback channel.
        /// </summary>
        /// <param name="username"></param>
        /// <param name="cardsUncovered"></param>
        [OperationContract(IsOneWay = true)]
        void NotifyPlayerLeaveMatch(string username, IList<int> cardsUncovered);

        /// <summary>
        /// Notifies when the match is over to to all the connected clients in the callback channel.
        /// </summary>
        [OperationContract(IsOneWay = true)]
        void MatchHasEnded();
    }

}
