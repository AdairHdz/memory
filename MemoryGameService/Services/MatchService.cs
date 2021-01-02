using DataAccess;
using DataAccess.Entities;
using DataAccess.Units_of_work;
using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;
using MemoryGameService.DataTransferObjects;
using MemoryGameService.Utilities;
using System.Collections.Generic;
using System.ServiceModel;

namespace MemoryGameService.Services
{
    public partial class MemoryGameService : IMatchService
    {
        /**
         * Host: string
         * Username: string
         * HasFormedAPair: bool
         * CardIndex: int
         * */

        //private static IList<GameMatchConfigDto> _activeMatches = new List<GameMatchConfigDto>();

        public void EnterMatch(string host, string username)
        {

            foreach(var match in _matches)
            {
                if (match.Host.Equals(host))
                {
                    bool hasActiveTurn = host.Equals(username);
                    PlayerInMatchDto player = new PlayerInMatchDto()
                    {
                        Username = username,
                        Score = 0,
                        HasActiveTurn = true,
                        Connection = OperationContext.Current.GetCallbackChannel<IMatchServiceCallback>(),
                    };
                    match.AddPlayer(player);
                    break;
                }
      
            }
        }

        public IList<PlayerInMatchDto> GetPlayersConnectedToMatch(string host)
        {
            GameMatchConfigDto match = GetMatch(host);
            return match.GetPlayersConnectedToMatch();
        }

        public void NotifyCardWasUncoveredd(PlayerMovementDto playerTurnDto)
        {
            string host = playerTurnDto.Host;
            GameMatchConfigDto gameMatch = null;
            foreach(var match in _matches)
            {
                if (match.Host.Equals(host))
                {
                    gameMatch = match;
                }
            }

            

            IList<PlayerInMatchDto> playersInMatch = gameMatch.GetPlayersConnectedToMatch();

            foreach(var playerInMatch in playersInMatch)
            {
                playerInMatch.Connection.UncoverCardd(playerTurnDto.CardIndex);
            }            

        }

        public void NotifyMatchHasEnded(string host)
        {

            GameMatchConfigDto gameMatch = null;
            foreach (var match in _matches)
            {
                if (match.Host.Equals(host))
                {
                    gameMatch = match;
                }
            }

            PlayerInMatchDto playerWithBestScore = gameMatch.GetPlayerWithBestScore();
            string usernameOfPlayerWithBestScore = playerWithBestScore.Username;
            IList<PlayerInMatchDto> playersConnectedToMatch = gameMatch.GetPlayersConnectedToMatch();
            foreach(var playerConnected in playersConnectedToMatch)
            {
                var channel = playerConnected.Connection;
                channel.ShowWinners(usernameOfPlayerWithBestScore);
            }

            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            int cardDeckId = gameMatch.CardDeckDto.CardDeckId;

            Match matchToBeSaved = new Match()
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

        public void PassTurnToNextPlayer(string host, string username, CardPairDto cardPairDto)
        {
            GameMatchConfigDto gameMatch = null;
            foreach (var match in _matches)
            {
                if (match.Host.Equals(host))
                {
                    gameMatch = match;
                }
            }

            PlayerInMatchDto player = gameMatch.GetPlayer(username);
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
            
            PlayerInMatchDto nextPlayer = gameMatch.GetPlayersConnectedToMatch()[indexOfPlayerWithCurrentTurn];

            IList<PlayerInMatchDto> playersInMatch = gameMatch.GetPlayersConnectedToMatch();

            foreach (var playerInMatch in playersInMatch)
            {
                playerInMatch.Connection.NotifyTurnHasBeenPassed(nextPlayer.Username, cardPairDto);
            }
        }



        
    }
}
