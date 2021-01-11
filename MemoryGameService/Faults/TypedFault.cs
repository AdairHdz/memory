using System.Runtime.Serialization;

namespace MemoryGame.MemoryGameService.Faults
{
    /// <summary>
    /// The <c>TypedFault</c> class.
    /// This class is a supertype that strongly typed faults can inherit from.
    /// </summary>
    [DataContract]    
    public abstract class TypedFault
    {
        /// <summary>
        /// The error that originated the fault.
        /// </summary>
        [DataMember]
        public string Error { get; set; }

        /// <summary>
        /// The description of the error that originated the fault.
        /// </summary>
        [DataMember]
        public string Details { get; set; }

        /// <summary>
        /// The <c>TypedFault</c> constructor.
        /// </summary>
        protected TypedFault() { }

        /// <summary>
        /// The <c>TypedFault</c> constructor.
        /// </summary>
        /// <param name="error">The error that originated the fault.</param>
        /// <param name="details">The description of the error that originated the fault.</param>
        protected TypedFault(string error, string details)
        {
            Error = error;
            Details = details;
        }
    }
}
