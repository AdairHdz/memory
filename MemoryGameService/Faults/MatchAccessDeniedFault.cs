using System.Runtime.Serialization;

namespace MemoryGame.MemoryGameService.Faults
{
    [DataContract]
    public class MatchAccessDeniedFault : TypedFault
    {
        public MatchAccessDeniedFault()
        {
            Error = "The program was unable to find a match created by the specified host";
        }
    }
}
