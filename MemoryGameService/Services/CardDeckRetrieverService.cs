using DataAccess;
using DataAccess.Entities;
using DataAccess.Units_of_work;
using MemoryGame.MemoryGameService.Faults;
using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;
using MemoryGameService.DataTransferObjectMappers;
using MemoryGameService.Utilities;
using System;
using System.Collections.Generic;
using System.ServiceModel;
using System.Data.SqlClient;

namespace MemoryGameService.Services
{
    public partial class MemoryGameService : ICardDeckRetrieverService
    {
        private CardDeckDTO _cardDeckDTO;
        private IEnumerable<Card> _cards;
        public CardDeckDTO GetCardDeckAndCards(int cardDeckId)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                CardDeck cardDeck = unitOfWork.CardDecks.GetCardDeckAndCards(cardDeckId);
                if(cardDeck != null)
                {
                    _cardDeckDTO = CardDeckMapper.CreateDTO(cardDeck);
                    _cards = cardDeck.Cards;

                    /**
                     * This code is adding the same set of cards Twice.
                     * This is because this way I don't need to store each pair of cards
                     * in the database (it would be a waste of storage)
                     */
                    PopulateCardDeckDtoWithCards();
                    PopulateCardDeckDtoWithCards();

                    ShuffleCards();
                    return _cardDeckDTO;
                }
                CardDeckRetrievingFault cardDeckRetrievingFault = new CardDeckRetrievingFault()
                {
                    Error = "CardDeckRetrieving error",
                    Details = "There was an error while trying to get the selected card deck from the database"
                };
                throw new FaultException<CardDeckRetrievingFault>(cardDeckRetrievingFault);
            }
            catch (SqlException)
            {
                DatabaseConnectionLostFault databaseConnectionLostFault = new DatabaseConnectionLostFault();
                throw new FaultException<DatabaseConnectionLostFault>(databaseConnectionLostFault);
            }
            finally
            {
                unitOfWork.Dispose();
            }
        }

        public IList<CardDeckInfoDto> GetCardDecksInfo()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                IEnumerable<CardDeck> cardDecks = unitOfWork.CardDecks.GetAll();
                IList<CardDeckInfoDto> listOfCardDecksInfo = new List<CardDeckInfoDto>();
                foreach (var individualCardDeck in cardDecks)
                {
                    CardDeckInfoDto cardDeckInfo = new CardDeckInfoDto()
                    {
                        CardDeckId = individualCardDeck.CardDeckId,
                        CardDeckName = individualCardDeck.Name
                    };
                    listOfCardDecksInfo.Add(cardDeckInfo);
                }
                return listOfCardDecksInfo;
            }
            catch (SqlException)
            {
                DatabaseConnectionLostFault databaseConnectionLostFault = new DatabaseConnectionLostFault();
                throw new FaultException<DatabaseConnectionLostFault>(databaseConnectionLostFault);
            }      
        }

        private void PopulateCardDeckDtoWithCards()
        {
            foreach (Card actualCard in _cards)
            {
                CardDto cardDTO = CardMapper.CreateDTO(actualCard);
                _cardDeckDTO.Cards.Add(cardDTO);
            }
        }

        private void ShuffleCards()
        {
            CardShuffler cardShuffler = new CardShuffler();
            cardShuffler.ShuffleCards(_cardDeckDTO.Cards);
        }
    }
}
