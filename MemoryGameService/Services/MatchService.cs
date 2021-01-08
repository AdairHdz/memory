using DataAccess;
using DataAccess.Entities;
using DataAccess.Units_of_work;
using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGame.MemoryGameService.Faults;
using MemoryGameService.Contracts;
using System.Collections.Generic;
using System.ServiceModel;

namespace MemoryGameService.Services
{
    public partial class MemoryGameService : IMatchService
    {
        public void EnterMatch(string host, string username)
        {
            MemoryGame.MemoryGameService.DataTransferObjects.MatchDto gameMatch = GetMatch(host);

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

        public IList<PlayerInMatch> GetPlayersConnectedToMatch(string host)
        {
            MemoryGame.MemoryGameService.DataTransferObjects.MatchDto match = GetMatch(host);
            return match.GetPlayersConnectedToMatch();
        }

        public void NotifyCardWasUncoveredd(PlayerMovementDto playerTurnDto)
        {
            string host = playerTurnDto.Host;
            MemoryGame.MemoryGameService.DataTransferObjects.MatchDto gameMatch = null;
            foreach(var match in _matches)
            {
                if (match.Host.Equals(host))
                {
                    gameMatch = match;
                }
            }

            PlayerInMatch player = gameMatch.GetPlayer(playerTurnDto.Username);
            if (playerTurnDto.HasFormedAPair)
            {
                player.AddUncoveredCard(playerTurnDto.CardIndex);
            }
            else
            {
                if (playerTurnDto.MovementsLeft == 0)
                {
                    player.RemoveUncoveredCard();
                }
                else
                {
                    player.AddUncoveredCard(playerTurnDto.CardIndex);
                }
            }

            IList<PlayerInMatch> playersInMatch = gameMatch.GetPlayersConnectedToMatch();

            foreach(var playerInMatch in playersInMatch)
            {
                playerInMatch.MatchServiceConnection.UncoverCardd(playerTurnDto.CardIndex);
            }            

        }

        public void NotifyMatchHasEnded(string host)
        {

            MemoryGame.MemoryGameService.DataTransferObjects.MatchDto gameMatch = null;
            foreach (var match in _matches)
            {
                if (match.Host.Equals(host))
                {
                    gameMatch = match;
                }
            }

            PlayerInMatch playerWithBestScore = gameMatch.GetPlayerWithBestScore();
            string usernameOfPlayerWithBestScore = playerWithBestScore.Username;
            IList<PlayerInMatch> playersConnectedToMatch = gameMatch.GetPlayersConnectedToMatch();
            foreach(var playerConnected in playersConnectedToMatch)
            {
                var channel = playerConnected.MatchServiceConnection;
                channel.ShowWinners(usernameOfPlayerWithBestScore);
                channel.MatchHasEnded();
            }

            /*UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            int cardDeckId = gameMatch.CardDeckDto.CardDeckId;

            DataAccess.Entities.Match matchToBeSaved = new DataAccess.Entities.Match()
            {
                StatusId = 1,
                CardDeckId = cardDeckId,
                Duration = 0
            };

            unitOfWork.Matches.Add(matchToBeSaved);
            int recordsAdded = unitOfWork.Complete();
            unitOfWork.Dispose();*/

            _matches.Remove(gameMatch);

        }

        private bool SaveMatch()
        {            
            return false;
        }

        //EndTurn

        public void EndTurn(string host, string username, CardPairDto cardPairDto)
        {
            MemoryGame.MemoryGameService.DataTransferObjects.MatchDto gameMatch = null;
            foreach (var match in _matches)
            {
                if (match.Host.Equals(host))
                {
                    gameMatch = match;
                }
            }

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
        }

        public void LeaveMatch(string host, string username)
        {
            MemoryGame.MemoryGameService.DataTransferObjects.MatchDto gameMatch = null;
            foreach (var match in _matches)
            {
                if (match.Host.Equals(host))
                {
                    gameMatch = match;
                }
            }

            IList<PlayerInMatch> playersInMatch = gameMatch.GetPlayersConnectedToMatch();
            PlayerInMatch playerWithActiveTurn = null;
            PlayerInMatch leavePlayer = gameMatch.GetPlayer(username);

            foreach (var player in playersInMatch)
            {
                if (player.HasActiveTurn == true)
                {
                    playerWithActiveTurn = player;
                    break;
                }
            }

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

            foreach (var playerConnected in playersInMatch)
            {
                var channel = playerConnected.MatchServiceConnection;
                channel.NotifyPlayerLeaveMatch(username, leavePlayer.GetUncoveredCards());
            }

            gameMatch.RemovePlayer(username);

            if (playersInMatch.Count == 1)
            {
                this.NotifyMatchHasEnded(host);
            }
        }

        public void ExpelPlayer(string host, string expelPlayerUsername, string playerUsername)
        {
            MemoryGame.MemoryGameService.DataTransferObjects.MatchDto gameMatch = null;
            foreach (var match in _matches)
            {
                if (match.Host.Equals(host))
                {
                    gameMatch = match;
                }
            }

            int playerExpelVotes = gameMatch.AddExpelVote(expelPlayerUsername);
            PlayerInMatch currentPlayer = gameMatch.GetPlayer(playerUsername);
            currentPlayer.AddPlayerVoted(expelPlayerUsername);

            IList<PlayerInMatch> playersInMatch = gameMatch.GetPlayersConnectedToMatch();
            int numOfPlayers = playersInMatch.Count;

            if (playerExpelVotes > (numOfPlayers / 2))
            {

                PlayerInMatch playerWithActiveTurn = null;
                PlayerInMatch expelPlayer = gameMatch.GetPlayer(expelPlayerUsername);

                foreach (var player in playersInMatch)
                {
                    if (player.HasActiveTurn == true)
                    {
                        playerWithActiveTurn = player;
                    }
                }

                if (playerWithActiveTurn.Username.Equals(expelPlayerUsername))
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

                foreach (var playerConnected in playersInMatch)
                {
                    var channel = playerConnected.MatchServiceConnection;
                    channel.NotifyPlayerWasExpel(expelPlayerUsername, expelPlayer.GetUncoveredCards());
                }

                gameMatch.RemovePlayer(expelPlayerUsername);

                if (playersInMatch.Count == 1)
                {
                    this.NotifyMatchHasEnded(host);
                }
            }
        }

        public IList<string> GetUsernamesOfPlayersConnectedToMatch(string host)
        {
            MemoryGame.MemoryGameService.DataTransferObjects.MatchDto gameMatch = null;
            foreach (var match in _matches)
            {
                if (match.Host.Equals(host))
                {
                    gameMatch = match;
                }
            }

            IList<string> playerUsername = gameMatch.GetUsernamesOfPlayersConnectedToMatch();

            return playerUsername;
        }

        public IList<string> GetPlayersVoted(string host, string username)
        {
            MemoryGame.MemoryGameService.DataTransferObjects.MatchDto gameMatch = null;
            foreach (var match in _matches)
            {
                if (match.Host.Equals(host))
                {
                    gameMatch = match;
                }
            }

            PlayerInMatch player = gameMatch.GetPlayer(username);
            IList<string> playersVoted = player.GetPlayersVoted();

            return playersVoted;
        }

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
    }
}
