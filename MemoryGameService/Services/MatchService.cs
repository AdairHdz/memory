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
                MatchServiceConnection = OperationContext.Current.GetCallbackChannel<IMatchServiceCallback>()
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
            }

            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            int cardDeckId = gameMatch.CardDeckDto.CardDeckId;

            DataAccess.Entities.Match matchToBeSaved = new DataAccess.Entities.Match()
            {
                StatusId = 1,
                CardDeckId = cardDeckId,
                Duration = 0
            };

            unitOfWork.Matches.Add(matchToBeSaved);
            int recordsAdded = unitOfWork.Complete();
            unitOfWork.Dispose();

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
                if (indexOfPlayerWithCurrentTurn == (gameMatch.GetPlayersConnectedToMatch().Count - 1))
                {
                    indexOfPlayerWithCurrentTurn = 0;
                }
                else
                {
                    indexOfPlayerWithCurrentTurn++;
                }
            }
            
            PlayerInMatch nextPlayer = gameMatch.GetPlayersConnectedToMatch()[indexOfPlayerWithCurrentTurn];

            IList<PlayerInMatch> playersInMatch = gameMatch.GetPlayersConnectedToMatch();

            foreach (var playerInMatch in playersInMatch)
            {
                playerInMatch.MatchServiceConnection.NotifyTurnHasEnded(nextPlayer.Username, cardPairDto);
            }
        }        
    }
}
