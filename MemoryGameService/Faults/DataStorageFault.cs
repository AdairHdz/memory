using System.Runtime.Serialization;

namespace MemoryGame.MemoryGameService.Faults
{
    [DataContract]
    public class DataStorageFault : TypedFault
    {
        public DataStorageFault()
        {
            Error = "An error has occured while performing an operation on the database";
        }
    }
}
