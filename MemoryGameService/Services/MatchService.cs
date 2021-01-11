using DataAccess;
using DataAccess.Entities;
using DataAccess.Units_of_work;
using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;
using System;
using System.Collections.Generic;
using System.ServiceModel;

namespace MemoryGameService.Services
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
    /// </list>
    /// <item>
    /// <term>GetPlayersVoted</term>
    /// <description>Get a list of the names of the players a player has already voted for.</description>
    /// </item>
    /// </list>
    /// <item>
    /// <term>ChangeTurn</term>
    /// <description>Make a turn assignment for a new player.</description>
    /// </item>
    /// </list>
    /// <item>
    /// <term>RemovePairs</term>
    /// <description>Subtract an amount from the total pairs formed in the match.</description>
    /// </item>
    /// </list>
    /// </summary>
    public partial class MemoryGameService : IMatchService
    {
        /// <summary>
        /// Create a list of connected players in the match mapping players on PlayerInMatch type objects.
        /// </summary>
        /// <param name="host">Name of the player who created the match.</param>
        /// <param name="username">Name of the player to be added to the list.</param>
        public void EnterMatch(string host, string username)
        {
            MatchDto gameMatch = GetMatch(host);

            bool hasActiveTurn = false;
            if (host.Equals(username))
            {
                hasActiveTurn = true;
            }

            PlayerInMatch player = new PlayerInMatch()
            {
                Username = username,
                Score = 0,
                HasActiveTurn = hasActiveTurn,
                MatchServiceConnection = OperationContext.Current.GetCallbackChannel<IMatchServiceCallback>(),
                ExpulsionVotes = 0
            };
            gameMatch.AddPlayer(player);
        }

        /// <summary>
        /// Gets a list of PlayerInMatch objects of the players connected to the game.
        /// </summary>
        /// <param name="host">Name of the player who created the match.</param>
        /// <returns>A list of PlayerInMatch objects.</returns>
        public IList<PlayerInMatch> GetPlayersConnectedToMatch(string host)
        {
            MatchDto match = GetMatch(host);
            return match.GetPlayersConnectedToMatch();
        }

        /// <summary>
        /// Flips a card clicked by the player and and notifies all connected players.
        /// </summary>
        /// <param name="playerMovementDto">Contains the data about the player's turn.</param>
        public void NotifyCardWasUncoveredd(PlayerMovementDto playerMovementDto)
        {
            string host = playerMovementDto.Host;
            MatchDto gameMatch = GetMatch(host);

            PlayerInMatch player = gameMatch.GetPlayer(playerMovementDto.Username);
            if (playerMovementDto.HasFormedAPair)
            {
                player.AddUncoveredCard(playerMovementDto.CardIndex);
                gameMatch.TotalPairs++;
            }
            else
            {
                if (playerMovementDto.MovementsLeft == 0)
                {
                    player.RemoveUncoveredCard();
                }
                else
                {
                    player.AddUncoveredCard(playerMovementDto.CardIndex);
                }
            }

            IList<PlayerInMatch> playersInMatch = gameMatch.GetPlayersConnectedToMatch();

            foreach(var playerInMatch in playersInMatch)
            {
                playerInMatch.MatchServiceConnection.UncoverCardd(playerMovementDto.CardIndex);
            }            

        }

        /// <summary>
        /// Notifies all connected players that the game is over and the player who has won.
        /// </summary>
        /// <param name="host">Name of the player who created the match.</param>
        public void NotifyMatchHasEnded(string host)
        {

            MatchDto gameMatch = GetMatch(host);
            if(host != null)
            {
                PlayerInMatch playerWithBestScore = gameMatch.GetPlayerWithBestScore();
                string usernameOfPlayerWithBestScore = playerWithBestScore.Username;
                IList<PlayerInMatch> playersConnectedToMatch = gameMatch.GetPlayersConnectedToMatch();
                foreach (var playerConnected in playersConnectedToMatch)
                {
                    var channel = playerConnected.MatchServiceConnection;
                    channel.ShowWinners(usernameOfPlayerWithBestScore);
                    channel.MatchHasEnded();
                }

                UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
                try
                {
                    foreach (var playerInMatch in gameMatch.GetPlayersConnectedToMatch())
                    {
                        unitOfWork.Players.UpdateScoreOfPlayersAfterMatch(playerInMatch.Username, playerInMatch.Score);
                    }

                    Player winner = unitOfWork.Players.FindPlayerByUsername(usernameOfPlayerWithBestScore);
                    CardDeck cardDeck = unitOfWork.CardDecks.Get(gameMatch.CardDeckDto.CardDeckId);

                    Match matchToBeSaved = new Match()
                    {
                        CardDeck = cardDeck,
                        Winner = winner,
                        Date = DateTime.Now
                    };
                    unitOfWork.Matches.Add(matchToBeSaved);
                    unitOfWork.Complete();
                }
                catch (Exception e)
                {
                    Console.WriteLine(e);
                    Console.ReadLine();
                }
                finally
                {
                    unitOfWork.Dispose();
                }

                _matches.Remove(gameMatch);
            }
        }

        /// <summary>
        /// Ends the turn taken by a player and checks if he has formed a pair of cards.
        /// </summary>
        /// <param name="host">Name of the player who created the match.</param>
        /// <param name="username">Name of the player who has taken the turn.</param>
        /// <param name="cardPairDto">The pair of cards he has flipped.</param>
        public void EndTurn(string host, string username, CardPairDto cardPairDto)
        {
            MatchDto gameMatch = GetMatch(host);
            PlayerInMatch player = gameMatch.GetPlayer(username);
            int indexOfPlayerWithCurrentTurn = gameMatch.GetPlayersConnectedToMatch().IndexOf(player);

            if (cardPairDto.BothCardsAreEqual)
            {
                player.Score += 100;
            }
            else
            {
                indexOfPlayerWithCurrentTurn = ChangeTurn(gameMatch, indexOfPlayerWithCurrentTurn);
            }

            PlayerInMatch nextPlayer = gameMatch.GetPlayersConnectedToMatch()[indexOfPlayerWithCurrentTurn];
            player.HasActiveTurn = false;
            nextPlayer.HasActiveTurn = true;

            IList<PlayerInMatch> playersInMatch = gameMatch.GetPlayersConnectedToMatch();

            foreach (var playerInMatch in playersInMatch)
            {
                playerInMatch.MatchServiceConnection.NotifyTurnHasEnded(nextPlayer.Username, cardPairDto);
            }

            if (gameMatch.TotalPairs == gameMatch.CardDeckDto.NumberOfPairs)
            {
                this.NotifyMatchHasEnded(host);
            }

        }

        /// <summary>
        /// Allows a player to leave the game and removes him from the list of connected players.
        /// </summary>
        /// <param name="host">Name of the player who created the match.</param>
        /// <param name="username">Name of the player who leaves the match.</param>
        public void LeaveMatch(string host, string username)
        {
            MatchDto gameMatch = GetMatch(host);

            IList<PlayerInMatch> playersInMatch = gameMatch.GetPlayersConnectedToMatch();
            PlayerInMatch playerWithActiveTurn = gameMatch.GetPlyerWithActiveTurn();
            PlayerInMatch leavePlayer = gameMatch.GetPlayer(username);

            if (playerWithActiveTurn.Username.Equals(username))
            {
                leavePlayer = playerWithActiveTurn;
                int indexOfPlayerWithCurrentTurn = gameMatch.GetPlayersConnectedToMatch().IndexOf(playerWithActiveTurn);
                indexOfPlayerWithCurrentTurn = ChangeTurn(gameMatch, indexOfPlayerWithCurrentTurn);

                PlayerInMatch nextPlayer = gameMatch.GetPlayersConnectedToMatch()[indexOfPlayerWithCurrentTurn];
                playerWithActiveTurn.HasActiveTurn = false;
                nextPlayer.HasActiveTurn = true;

                foreach (var playerInMatch in playersInMatch)
                {
                    playerInMatch.MatchServiceConnection.EndTurnOfExpelPlayer(nextPlayer.Username);
                }
            }

            IList<int> cardsUncovered = leavePlayer.GetUncoveredCards();
            foreach (var playerConnected in playersInMatch)
            {
                var channel = playerConnected.MatchServiceConnection;
                channel.NotifyPlayerLeaveMatch(username, cardsUncovered);
            }

            RemovePairs(gameMatch, cardsUncovered);
            gameMatch.RemovePlayer(username);

            if (playersInMatch.Count == 1)
            {
                this.NotifyMatchHasEnded(host);
            }
        }

        /// <summary>
        /// Allows a player to vote for the expulsion of another player, who will be 
        /// voted out by collecting a majority of votes.
        /// </summary>
        /// <param name="expelVote">It contains the expulsion data: Name of the player to 
        /// be expelled, name of the player voting and the host name of the game</param>
        public void ExpelPlayer(ExpelVoteDto expelVote)
        {
            string host = expelVote.Host;
            MatchDto gameMatch = GetMatch(host);
            string usernameOfExpelPlayer = expelVote.UsernameOfExpelPlayer;

            int playerExpelVotes = gameMatch.AddExpelVote(usernameOfExpelPlayer);
            PlayerInMatch voterPlayer = gameMatch.GetPlayer(expelVote.UsernameOfVoterPlayer);
            voterPlayer.AddPlayerVoted(usernameOfExpelPlayer);

            IList<PlayerInMatch> playersInMatch = gameMatch.GetPlayersConnectedToMatch();
            int numOfPlayers = playersInMatch.Count;

            if (playerExpelVotes > (numOfPlayers / 2))
            {
                PlayerInMatch playerWithActiveTurn = gameMatch.GetPlyerWithActiveTurn();
                PlayerInMatch expelPlayer = gameMatch.GetPlayer(usernameOfExpelPlayer);

                if (playerWithActiveTurn.Username.Equals(usernameOfExpelPlayer))
                {
                    expelPlayer = playerWithActiveTurn;
                    int indexOfPlayerWithCurrentTurn = gameMatch.GetPlayersConnectedToMatch().IndexOf(playerWithActiveTurn);
                    indexOfPlayerWithCurrentTurn = ChangeTurn(gameMatch, indexOfPlayerWithCurrentTurn);

                    PlayerInMatch nextPlayer = gameMatch.GetPlayersConnectedToMatch()[indexOfPlayerWithCurrentTurn];
                    playerWithActiveTurn.HasActiveTurn = false;
                    nextPlayer.HasActiveTurn = true;

                    foreach (var playerInMatch in playersInMatch)
                    {
                        playerInMatch.MatchServiceConnection.EndTurnOfExpelPlayer(nextPlayer.Username);
                    }
                }

                IList<int> cardsUncovered = expelPlayer.GetUncoveredCards();
                foreach (var playerConnected in playersInMatch)
                {
                    var channel = playerConnected.MatchServiceConnection;
                    channel.NotifyPlayerWasExpel(usernameOfExpelPlayer, cardsUncovered);
                }

                RemovePairs(gameMatch, cardsUncovered);
                gameMatch.RemovePlayer(usernameOfExpelPlayer);

                if (playersInMatch.Count == 1)
                {
                    this.NotifyMatchHasEnded(host);
                }

            }
        }

        /// <summary>
        /// Gets a list of usernames of the players connected to the game.
        /// </summary>
        /// <param name="host">Name of the player who created the match.</param>
        /// <returns>A list of strings.</returns>
        public IList<string> GetUsernamesOfPlayersConnectedToMatch(string host)
        {
            MatchDto gameMatch = GetMatch(host);

            IList<string> playerUsername = gameMatch.GetUsernamesOfPlayersConnectedToMatch();

            return playerUsername;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="host">Name of the player who created the match.</param>
        /// <param name="username">Name of the player associated to the list to be retriev.</param>
        /// <returns>A list of strings of the user names for which the player has voted.</returns>
        public IList<string> GetPlayersVoted(string host, string username)
        {
            MatchDto gameMatch = GetMatch(host);

            PlayerInMatch player = gameMatch.GetPlayer(username);
            IList<string> playersVoted = player.GetPlayersVoted();

            return playersVoted;
        }

        /// <summary>
        /// Change the active turn from one player to the next in the list of connected players.
        /// </summary>
        /// <param name="gameMatch">Match in which the operation is to be carried out.</param>
        /// <param name="indexOfPlayerWithCurrentTurn">Index in the list of the player with active turn.</param>
        /// <returns>Index of the new player with active turn.</returns>
        public int ChangeTurn(MatchDto gameMatch, int indexOfPlayerWithCurrentTurn)
        {
            if (indexOfPlayerWithCurrentTurn == (gameMatch.GetPlayersConnectedToMatch().Count - 1))
            {
                indexOfPlayerWithCurrentTurn = 0;
            }
            else
            {
                indexOfPlayerWithCurrentTurn++;
            }

            return indexOfPlayerWithCurrentTurn;
        }

        /// <summary>
        /// Subtracts the number of total pairs formed in the match from the number of pairs formed 
        /// by the player leaving the match.
        /// </summary>
        /// <param name="gameMatch">Match in which the operation is to be carried out.</param>
        /// <param name="cardsUncovered">List of index of cards flipped by the player.</param>
        public void RemovePairs(MatchDto gameMatch, IList<int> cardsUncovered)
        {
            if ((cardsUncovered.Count % 2) == 0)
            {
                gameMatch.TotalPairs = gameMatch.TotalPairs - (cardsUncovered.Count / 2);
            }
            else
            {
                gameMatch.TotalPairs = gameMatch.TotalPairs - ((cardsUncovered.Count - 1) / 2);
            }          
        }
    }
}