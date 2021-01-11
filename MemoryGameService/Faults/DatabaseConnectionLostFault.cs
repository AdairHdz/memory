using System.Runtime.Serialization;

namespace MemoryGame.MemoryGameService.Faults
{
    /// <summary>
    /// The <c>DatabaseConnectionLostFault</c> class.
    /// This fault is thrown when the connection to the database has been lost.
    /// </summary>
    [DataContract]
    public class DatabaseConnectionLostFault : TypedFault
    {
        /// <summary>
        /// The <c>DatabaseConnectionLostFault</c> constructor.
        /// </summary>
        public DatabaseConnectionLostFault()
        {
            Error = "The connection to the database has been lost";
        }
    }
}
