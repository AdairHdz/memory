using System.Runtime.Serialization;

namespace MemoryGame.MemoryGameService.Faults
{
    [DataContract]
    public class DatabaseConnectionLostFault : TypedFault
    {
        public DatabaseConnectionLostFault()
        {
            Error = "The connection to the database has been lost";
        }
    }
}
