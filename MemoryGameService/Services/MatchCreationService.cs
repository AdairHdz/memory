using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;
using MemoryGameService.Logic;
using System.Collections.Generic;

namespace MemoryGameService.Services
{
    /// <inheritdoc/>
    public partial class MemoryGameService : IMatchCreationService
    {
        /// <inheritdoc/>
        public void CreateNewMatch(MatchDto gameMatchDto)
        {
            IList<CardDto> cards = new List<CardDto>();
            IList<ServiceCard> serviceCards = new List<ServiceCard>();
            foreach(var cardDto in gameMatchDto.CardDeckDto.Cards)
            {
                ServiceCard card = new ServiceCard()
                {
                    CardId = cardDto.CardId,
                    FrontImage = cardDto.FrontImage
                };
                serviceCards.Add(card);
            }

            ServiceCardDeck serviceCardDeck = new ServiceCardDeck()
            {
                CardDeckId = gameMatchDto.CardDeckDto.CardDeckId,
                NumberOfPairs = gameMatchDto.CardDeckDto.NumberOfPairs,
                Cards = serviceCards,
                BackImage = gameMatchDto.CardDeckDto.BackImage
            };

            ServiceMatch serviceMatch = new ServiceMatch()
            {
                Host = gameMatchDto.Host,
                MaxNumberOfPlayers = gameMatchDto.MaxNumberOfPlayers,
                HasStarted = false,
                ServiceCardDeck = serviceCardDeck
            };
            _matches.Add(serviceMatch);
        }
    }
}
