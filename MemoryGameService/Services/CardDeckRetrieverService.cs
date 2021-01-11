using DataAccess;
using DataAccess.Entities;
using DataAccess.Units_of_work;
using MemoryGame.MemoryGameService.Faults;
using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;
using MemoryGameService.DataTransferObjectMappers;
using MemoryGameService.Utilities;
using System.Collections.Generic;
using System.ServiceModel;
using System.Data.SqlClient;

namespace MemoryGameService.Services
{
    /// <summary>
    /// The <c>CardDeckRetriever</c> service.
    /// Is used Used to retrieve card decks and shuffle cards for matches.
    /// The operations it contains are:
    /// <list type="bullet">
    /// <item>
    /// <term>GetCardDeckAndCards</term>
    /// <description>Gets a specific card deck.</description>
    /// </item>
    /// <item>
    /// <term>GetCardDecksInfo</term>
    /// <description>Gets the information of all the card decks.</description>
    /// </item>
    /// <item>
    /// <term>PopulateCardDeckDtoWithCards</term>
    /// <description>Map a Card entity to a CardDto.</description>
    /// </item>
    /// <item>
    /// <term>ShuffleCards</term>
    /// <description>Shuffle the cards on a card deck for a game.</description>
    /// </item>
    /// </list>
    /// </summary>
    public partial class MemoryGameService : ICardDeckRetrieverService
    {
        private CardDeckDTO _cardDeckDTO;
        private IEnumerable<Card> _cards;

        /// <summary>
        /// Gets a card deck registered in the database according to an id.
        /// </summary>
        /// <param name="cardDeckId">Id of card deck to be recovered.</param>
        /// <returns>A CardDeckDto object with the information of the recovered card deck.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
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

        /// <summary>
        /// Obtiene una lista con todos los card deck registrados en la base de datos.
        /// </summary>
        /// <returns>A list with CarDeckDto objects mapped from the card decks 
        /// retrieved from the database.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
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

        /// <summary>
        /// Creates a CardDto object mapped from a Card entity.
        /// </summary>
        private void PopulateCardDeckDtoWithCards()
        {
            foreach (Card actualCard in _cards)
            {
                CardDto cardDTO = CardMapper.CreateDTO(actualCard);
                _cardDeckDTO.Cards.Add(cardDTO);
            }
        }

        /// <summary>
        /// Randomly shuffle the cards on a card deck for a game.
        /// </summary>
        private void ShuffleCards()
        {
            CardShuffler cardShuffler = new CardShuffler();
            cardShuffler.ShuffleCards(_cardDeckDTO.Cards);
        }
    }
}
