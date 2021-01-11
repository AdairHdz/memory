using System.Runtime.Serialization;

namespace MemoryGame.MemoryGameService.Faults
{
    /// <summary>
    /// The <c>CardDeckRetrievingFault</c>
    /// This fault is thrown when an error occurs while trying to get a <c>CardDeck</c> entity from the database.
    /// </summary>
    [DataContract]
    public class CardDeckRetrievingFault : TypedFault
    {
        /// <summary>
        /// The <c>CardDeckRetrievinFault</c> constructor.
        /// </summary>
        public CardDeckRetrievingFault()
        {
            Error = "There was an error while trying to retrieve the card deck from the database";
        }
    }
}
