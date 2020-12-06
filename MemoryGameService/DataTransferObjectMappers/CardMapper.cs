using DataAccess.Entities;
using MemoryGame.MemoryGameService.DataTransferObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGameService.DataTransferObjectMappers
{
    public class CardMapper
    {
        public static CardDTO CreateDTO(Card card)
        {
            CardDTO cardDto = new CardDTO()
            {
                CardId = card.CardId,
                FrontImage = card.FrontImage
            };

            return cardDto;
        }

        public static Card CreateEntity(CardDTO cardDto)
        {
            Card card = new Card()
            {
                CardId = cardDto.CardId,
                FrontImage = cardDto.FrontImage
            };

            return card;
        }
    }
}
