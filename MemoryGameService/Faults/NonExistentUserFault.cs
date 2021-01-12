using System.Runtime.Serialization;

namespace MemoryGame.MemoryGameService.Faults
{
    /// <summary>
    /// The <c>NonExistentUserFault</c> class.
    /// This fault is thrown when you try to get from the database an <c>Account</c> entity that does not exist.
    /// </summary>
    [DataContract]
    public class NonExistentUserFault : TypedFault
    {
        /// <summary>
        /// The <c>NonExistentUserFault</c> constructor.
        /// </summary>
        public NonExistentUserFault()
        {
            Error = "The database does not contain any user with the specified credentials";
        }
    }
}
