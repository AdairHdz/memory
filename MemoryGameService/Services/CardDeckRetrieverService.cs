using DataAccess;
using DataAccess.Entities;
using DataAccess.Units_of_work;
using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;
using MemoryGameService.Utilities;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data.Entity.Core;

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
        private CardDeckDTO _cardDeckDTO = new CardDeckDTO();
        private IEnumerable<Card> _cards;

        /// <summary>
        /// Gets a card deck registered in the database according to an id.
        /// </summary>
        /// <param name="cardDeckId">Id of card deck to be recovered.</param>
        /// <returns>A CardDeckDto object with the information of the recovered card deck.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
        /// <exception cref="EntityException">Thrown when there is no database.</exception>
        public CardDeckDTO GetCardDeckAndCards(int cardDeckId)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                CardDeck cardDeck = unitOfWork.CardDecks.GetCardDeckAndCards(cardDeckId);
                _cardDeckDTO = new CardDeckDTO()
                {
                    CardDeckId = cardDeck.CardDeckId,
                    Name = cardDeck.Name,
                    BackImage = cardDeck.BackImage,
                    NumberOfPairs = cardDeck.NumberOfPairs,
                    Cards = new List<CardDto>()
                };
                _cards = cardDeck.Cards;
                //This code is adding the same set of cards Twice.
                //This is because this way I don't need to store each pair of cards
                //in the database (it would be a waste of storage)

                PopulateCardDeckDtoWithCards();
                PopulateCardDeckDtoWithCards();

                ShuffleCards();
                return _cardDeckDTO;
            }
            catch (SqlException sqlException)
            {
                _logger.Fatal("CardDeckRetrieverService.cs: An exception was thrown while trying to get a Card entity with " +
                    "the specified primary key (cardDeckId) " +
                    "from the database. Method GetCardDeckAndCards, line 53", sqlException);
                throw;
            }
            catch (EntityException entityException)
            {
                _logger.Fatal("CardDeckRetrieverService.cs: An exception was thrown while trying to access the database. " +
                    "It is possible that the database is corrupted or that it does not exist. " +
                    "Method GetCardDeckAndCards, line 53", entityException);
                throw;
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
        /// <exception cref="EntityException">Thrown when there is no database.</exception>
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
            catch (SqlException sqlException)
            {
                _logger.Fatal("CardDeckRetrieverService.cs: An exception was thrown while trying to get the " +
                    "CardDeck entities with the specified primary key (cardDeckId). " +
                    "Method GetCardDecksInfo, line 105", sqlException);
                throw;
            }
            catch (EntityException entityException)
            {
                _logger.Fatal("CardDeckRetrieverService.cs: An exception was thrown while trying " +
                    " to access the database. It is possible that the database is corrupted or that it does not exist. " +
                    "Method GetCardDecksInfo, line 105", entityException);
                throw;
            }
            finally
            {
                unitOfWork.Dispose();
            }
        }

        /// <summary>
        /// Creates a CardDto object mapped from a Card entity.
        /// </summary>
        private void PopulateCardDeckDtoWithCards()
        {
            foreach (Card actualCard in _cards)
            {
                CardDto cardDto = new CardDto()
                {
                    CardId = actualCard.CardId,
                    FrontImage = actualCard.FrontImage
                };
                _cardDeckDTO.Cards.Add(cardDto);
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
