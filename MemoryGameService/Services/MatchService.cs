using DataAccess;
using DataAccess.Entities;
using DataAccess.Units_of_work;
using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;
using MemoryGameService.Logic;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core;
using System.Data.SqlClient;
using System.ServiceModel;

namespace MemoryGameService.Services
{
    /// <inheritdoc/>
    public partial class MemoryGameService : IMatchService
    {
        /// <inheritdoc/>
        public void EnterMatch(string host, string username)
        {
            ServiceMatch gameMatch = GetMatch(host);

            bool hasActiveTurn = false;
            if (host.Equals(username))
            {
                hasActiveTurn = true;
            }

            ServicePlayer player = new ServicePlayer()
            {
                Username = username,
                Score = 0,
                HasActiveTurn = hasActiveTurn,
                MatchServiceConnection = OperationContext.Current.GetCallbackChannel<IMatchServiceCallback>(),
                ExpulsionVotes = 0
            };
            gameMatch.AddPlayer(player);
        }

        /// <inheritdoc/>
        public IList<PlayerInMatch> GetPlayersConnectedToMatch(string host)
        {
            ServiceMatch match = GetMatch(host);
            IList<ServicePlayer> playersConnectedToMatch = match.GetPlayersConnectedToMatch();
            IList<PlayerInMatch> playersToBeReturned = new List<PlayerInMatch>();
            foreach(var player in playersConnectedToMatch)
            {
                PlayerInMatch playerInMatch = new PlayerInMatch()
                {
                    Username = player.Username,
                    Score = player.Score,
                    HasActiveTurn = player.HasActiveTurn,
                    ExpulsionVotes = 0
                };
                playersToBeReturned.Add(playerInMatch);
            }
            return playersToBeReturned;
        }

        /// <inheritdoc/>
        public void NotifyCardWasUncoveredd(PlayerMovementDto playerMovementDto)
        {
            string host = playerMovementDto.Host;
            ServiceMatch gameMatch = GetMatch(host);

            ServicePlayer player = gameMatch.GetPlayer(playerMovementDto.Username);
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

            IList<ServicePlayer> playersInMatch = gameMatch.GetPlayersConnectedToMatch();

            foreach(var playerInMatch in playersInMatch)
            {
                playerInMatch.MatchServiceConnection.UncoverCardd(playerMovementDto.CardIndex);
            }            

        }

        /// <inheritdoc/>
        public void NotifyMatchHasEnded(string host)
        {

            ServiceMatch gameMatch = GetMatch(host);
            if(host != null)
            {
                ServicePlayer playerWithBestScore = gameMatch.GetPlayerWithBestScore();
                string usernameOfPlayerWithBestScore = playerWithBestScore.Username;
                IList<ServicePlayer> playersConnectedToMatch = gameMatch.GetPlayersConnectedToMatch();
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
                    CardDeck cardDeck = unitOfWork.CardDecks.Get(gameMatch.ServiceCardDeck.CardDeckId);

                    Match matchToBeSaved = new Match()
                    {
                        CardDeck = cardDeck,
                        Winner = winner,
                        Date = DateTime.Now
                    };
                    unitOfWork.Matches.Add(matchToBeSaved);
                    unitOfWork.Complete();
                }
                catch (SqlException sqlException)
                {
                    _logger.Fatal("MatchService.cs: An exception was thrown while trying " +
                        "to update the score of the players or while trying to register " +
                        " the match. The transaction could not be completed. " +
                        "Method NotifyMatchHasEnded, line 181", sqlException);
                    throw;
                }
                catch (EntityException entityException)
                {
                    _logger.Fatal("MatchService.cs: An exception was thrown while trying to access the " +
                        " database. It is possible that the database is corrupted or that it does not exist. " +
                        "Method NotifyMatchHasEnded, line 181", entityException);
                    throw;
                }
                finally
                {
                    unitOfWork.Dispose();
                }

                _matches.Remove(gameMatch);
            }
        }

        /// <inheritdoc/>
        public void EndTurn(string host, string username, CardPairDto cardPairDto)
        {
            ServiceMatch gameMatch = GetMatch(host);
            ServicePlayer player = gameMatch.GetPlayer(username);
            int indexOfPlayerWithCurrentTurn = gameMatch.GetPlayersConnectedToMatch().IndexOf(player);

            if (cardPairDto.BothCardsAreEqual)
            {
                player.Score += 100;
            }
            else
            {
                indexOfPlayerWithCurrentTurn = ChangeTurn(gameMatch, indexOfPlayerWithCurrentTurn);
            }

            ServicePlayer nextPlayer = gameMatch.GetPlayersConnectedToMatch()[indexOfPlayerWithCurrentTurn];
            player.HasActiveTurn = false;
            nextPlayer.HasActiveTurn = true;

            IList<ServicePlayer> playersInMatch = gameMatch.GetPlayersConnectedToMatch();

            foreach (var playerInMatch in playersInMatch)
            {
                playerInMatch.MatchServiceConnection.NotifyTurnHasEnded(nextPlayer.Username, cardPairDto);
            }

            if (gameMatch.TotalPairs == gameMatch.ServiceCardDeck.NumberOfPairs)
            {
                this.NotifyMatchHasEnded(host);
            }

        }

        /// <inheritdoc/>
        public void LeaveMatch(string host, string username)
        {
            ServiceMatch gameMatch = GetMatch(host);

            IList<ServicePlayer> playersInMatch = gameMatch.GetPlayersConnectedToMatch();
            ServicePlayer playerWithActiveTurn = gameMatch.GetPlyerWithActiveTurn();
            ServicePlayer leavePlayer = gameMatch.GetPlayer(username);

            if (playerWithActiveTurn.Username.Equals(username))
            {
                leavePlayer = playerWithActiveTurn;
                int indexOfPlayerWithCurrentTurn = gameMatch.GetPlayersConnectedToMatch().IndexOf(playerWithActiveTurn);
                indexOfPlayerWithCurrentTurn = ChangeTurn(gameMatch, indexOfPlayerWithCurrentTurn);

                ServicePlayer nextPlayer = gameMatch.GetPlayersConnectedToMatch()[indexOfPlayerWithCurrentTurn];
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

        /// <inheritdoc/>
        public void ExpelPlayer(ExpelVoteDto expelVote)
        {
            string host = expelVote.Host;
            ServiceMatch gameMatch = GetMatch(host);
            string usernameOfExpelPlayer = expelVote.UsernameOfExpelPlayer;

            int playerExpelVotes = gameMatch.AddExpelVote(usernameOfExpelPlayer);
            ServicePlayer voterPlayer = gameMatch.GetPlayer(expelVote.UsernameOfVoterPlayer);
            voterPlayer.AddPlayerVoted(usernameOfExpelPlayer);

            IList<ServicePlayer> playersInMatch = gameMatch.GetPlayersConnectedToMatch();
            int numOfPlayers = playersInMatch.Count;

            if (playerExpelVotes > (numOfPlayers / 2))
            {
                ServicePlayer playerWithActiveTurn = gameMatch.GetPlyerWithActiveTurn();
                ServicePlayer expelPlayer = gameMatch.GetPlayer(usernameOfExpelPlayer);

                if (playerWithActiveTurn.Username.Equals(usernameOfExpelPlayer))
                {
                    expelPlayer = playerWithActiveTurn;
                    int indexOfPlayerWithCurrentTurn = gameMatch.GetPlayersConnectedToMatch().IndexOf(playerWithActiveTurn);
                    indexOfPlayerWithCurrentTurn = ChangeTurn(gameMatch, indexOfPlayerWithCurrentTurn);

                    ServicePlayer nextPlayer = gameMatch.GetPlayersConnectedToMatch()[indexOfPlayerWithCurrentTurn];
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

        /// <inheritdoc/>
        public IList<string> GetUsernamesOfPlayersConnectedToMatch(string host)
        {
            ServiceMatch gameMatch = GetMatch(host);

            IList<string> playerUsername = gameMatch.GetUsernamesOfPlayersConnectedToMatch();

            return playerUsername;
        }

        /// <inheritdoc/>
        public IList<string> GetPlayersVoted(string host, string username)
        {
            ServiceMatch gameMatch = GetMatch(host);

            ServicePlayer player = gameMatch.GetPlayer(username);
            IList<string> playersVoted = player.GetPlayersVoted();

            return playersVoted;
        }

        /// <summary>
        /// Change the active turn from one player to the next in the list of connected players.
        /// </summary>
        /// <param name="gameMatch">Match in which the operation is to be carried out.</param>
        /// <param name="indexOfPlayerWithCurrentTurn">Index in the list of the player with active turn.</param>
        /// <returns>Index of the new player with active turn.</returns>
        public int ChangeTurn(ServiceMatch gameMatch, int indexOfPlayerWithCurrentTurn)
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
        public void RemovePairs(ServiceMatch gameMatch, IList<int> cardsUncovered)
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