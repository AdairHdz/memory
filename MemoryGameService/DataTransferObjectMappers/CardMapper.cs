using DataAccess.Entities;
using MemoryGame.MemoryGameService.DataTransferObjects;

namespace MemoryGameService.DataTransferObjectMappers
{
    public static class CardMapper
    {
        public static CardDto CreateDTO(Card card)
        {
            CardDto cardDto = new CardDto()
            {
                CardId = card.CardId,
                FrontImage = card.FrontImage
            };

            return cardDto;
        }

        public static Card CreateEntity(CardDto cardDto)
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
