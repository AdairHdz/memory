using DataAccess.Entities;
using MemoryGame.MemoryGameService.DataTransferObjects;
using System.Collections.Generic;

namespace MemoryGameService.DataTransferObjectMappers
{
    public static class CardDeckMapper
    {
        public static CardDeckDTO CreateDTO(CardDeck cardDeckEntity)
        {
            CardDeckDTO cardDeckDTO = new CardDeckDTO()
            {
                CardDeckId = cardDeckEntity.Id,
                Name = cardDeckEntity.Name,
                BackImage = cardDeckEntity.BackImage,
                NumberOfPairs = cardDeckEntity.NumberOfPairs,
                Cards = new List<CardDto>()
            };

            return cardDeckDTO;
        }

        public static CardDeck CreateEntity(CardDeckDTO cardDeckDTO)
        {
            CardDeck cardDeck = new CardDeck()
            {
                Id = cardDeckDTO.CardDeckId,
                Name = cardDeckDTO.Name,
                BackImage = cardDeckDTO.BackImage,
                NumberOfPairs = cardDeckDTO.NumberOfPairs
            };
            return cardDeck;
        }
    }
}
