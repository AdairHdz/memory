using System.Runtime.Serialization;

namespace MemoryGame.MemoryGameService.Faults
{
    [DataContract]
    public class CardDeckRetrievingFault : TypedFault
    {
        public CardDeckRetrievingFault()
        {
            Error = "There was an error while trying to retrieve the card deck from the database";
        }
    }
}
