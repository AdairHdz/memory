using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Logic;
using System.Collections.Generic;
using System.ServiceModel;

namespace MemoryGameService.Services
{
    /// <summary>
    /// The <c>MemoryGame</c> service.
    /// Is the main service class and contains the list with all the matches in the game.
    /// </summary>
    [ServiceBehavior(InstanceContextMode = InstanceContextMode.PerSession,
        ConcurrencyMode = ConcurrencyMode.Single)]
    public partial class MemoryGameService
    {
        private static IList<ServiceMatch> _matches = new List<ServiceMatch>();
        /// <summary>
        /// Is the constructor for the MemoryGameService class.
        /// </summary>
        public MemoryGameService() { }        
    }
}
