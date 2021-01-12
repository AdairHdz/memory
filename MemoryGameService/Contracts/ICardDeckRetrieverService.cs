using MemoryGame.MemoryGameService.DataTransferObjects;
using System.ServiceModel;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data.Entity.Core;

namespace MemoryGameService.Contracts
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
    [ServiceContract]
    public interface ICardDeckRetrieverService
    {
        /// <summary>
        /// Gets a card deck registered in the database according to an id.
        /// </summary>
        /// <param name="cardDeckId">Id of card deck to be recovered.</param>
        /// <returns>A CardDeckDto object with the information of the recovered card deck.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
        /// <exception cref="EntityException">Thrown when there is no database.</exception>
        [OperationContract]
        CardDeckDto GetCardDeckAndCards(int cardDeckId);

        /// <summary>
        /// Gets a list od CardDecks in data base.
        /// </summary>
        /// <returns>A list with CarDeckDto objects mapped from the card decks 
        /// retrieved from the database.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
        /// <exception cref="EntityException">Thrown when there is no database.</exception>
        [OperationContract]
        IList<CardDeckInfoDto> GetCardDecksInfo();
    }
}
