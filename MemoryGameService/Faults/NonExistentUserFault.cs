using System.Runtime.Serialization;

namespace MemoryGame.MemoryGameService.Faults
{
    [DataContract]
    public class NonExistentUserFault : TypedFault
    {
        public NonExistentUserFault()
        {
            Error = "The database does not contain any user with the specified credentials";
        }
    }
}
