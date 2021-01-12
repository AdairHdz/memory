using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGame.MemoryGameService.Faults;
using MemoryGameService.Contracts;
using MemoryGameService.Logic;
using System.Collections.Generic;
using System.ServiceModel;

namespace MemoryGameService.Services
{
    /// <inheritdoc/>
    public partial class MemoryGameService : IMatchDiscoveryService
    {
        /// <inheritdoc/>
        public bool CanJoin(string matchHost)
        {
            ServiceMatch gameMatch = GetMatch(matchHost);
            if (gameMatch == null)
            {
                MatchAccessDeniedFault matchAccessDeniedFault = new MatchAccessDeniedFault()
                {
                    Details = "The match does not exist."
                };
                throw new FaultException<MatchAccessDeniedFault>(matchAccessDeniedFault);
            }
            else
            {
                ServiceLobby lobby = gameMatch.Lobby;
                IList<ServicePlayerInLobby> playersConnectedToLobby = lobby.GetPlayersConnectedToLobby();
                int numberOfPlayersConnectedToLobby = playersConnectedToLobby.Count;
                int numberOfPlayersRequired = gameMatch.MaxNumberOfPlayers;
                bool matchHasStarted = gameMatch.HasStarted;
                bool ThereIsSpaceForAnotherPlayer = false;

                if (numberOfPlayersConnectedToLobby < numberOfPlayersRequired)
                {
                    ThereIsSpaceForAnotherPlayer = true;
                }

                if (ThereIsSpaceForAnotherPlayer && !matchHasStarted)
                {
                    return true;
                }
                return false;
            }
        }

        /// <inheritdoc/>
        public IList<MatchDto> GetActiveMatches()
        {
            IList<MatchDto> matchesWaitingToStart = new List<MatchDto>();
            foreach (var match in _matches)
            {
                if (!match.HasStarted)
                {

                    IList<CardDto> cards = new List<CardDto>();

                    foreach(var card in match.ServiceCardDeck.Cards)
                    {
                        CardDto cardDto = new CardDto()
                        {
                            CardId = card.CardId,
                            FrontImage = card.FrontImage
                        };
                        cards.Add(cardDto);
                    }

                    CardDeckDto cardDeckDto = new CardDeckDto()
                    {
                        CardDeckId = match.ServiceCardDeck.CardDeckId,
                        Name = match.ServiceCardDeck.Name,
                        BackImage = match.ServiceCardDeck.BackImage,
                        Cards = cards
                    };

                    MatchDto matchDto = new MatchDto()
                    {
                        Host = match.Host,
                        HasStarted = false,
                        MaxNumberOfPlayers = match.MaxNumberOfPlayers,
                        CardDeckDto = cardDeckDto
                    };
                    matchesWaitingToStart.Add(matchDto);
                }
            }
            return matchesWaitingToStart;
        }
    }
}
