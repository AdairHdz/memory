using DataAccess.Entities;
using MemoryGame.MemoryGameService.DataTransferObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGameService.DataTransferObjectMappers
{
    public class CardDeckMapper
    {
        public static CardDeckDTO CreateDTO(CardDeck cardDeckEntity)
        {
            CardDeckDTO cardDeckDTO = new CardDeckDTO()
            {
                CardDeckId = cardDeckEntity.CardDeckId,
                Name = cardDeckEntity.Name,
                BackImage = cardDeckEntity.BackImage,
                NumberOfPairs = cardDeckEntity.NumberOfPairs,
                Cards = new List<CardDTO>()
            };

            return cardDeckDTO;
        }

        public static CardDeck CreateEntity(CardDeckDTO cardDeckDTO)
        {
            CardDeck cardDeck = new CardDeck()
            {
                CardDeckId = cardDeckDTO.CardDeckId,
                Name = cardDeckDTO.Name,
                BackImage = cardDeckDTO.BackImage,
                NumberOfPairs = cardDeckDTO.NumberOfPairs
            };
            return cardDeck;
        }
    }
}
