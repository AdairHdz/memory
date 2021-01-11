using System.Runtime.Serialization;

namespace MemoryGame.MemoryGameService.Faults
{
    /// <summary>
    /// The <c>MatchAccessDeniedFault</c> class.
    /// This fault is thrown when a player tries to enter a match that does not exist.
    /// </summary>
    [DataContract]
    public class MatchAccessDeniedFault : TypedFault
    {
        /// <summary>
        /// The <c>MatchAccessDeniedFault</c> constructor.
        /// </summary>
        public MatchAccessDeniedFault()
        {
            Error = "The program was unable to find a match created by the specified host";
        }
    }
}
