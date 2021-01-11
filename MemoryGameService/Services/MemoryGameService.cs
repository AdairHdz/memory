using MemoryGame.MemoryGameService.DataTransferObjects;
using System.Collections.Generic;
using System.ServiceModel;

namespace MemoryGameService.Services
{
    [ServiceBehavior(InstanceContextMode = InstanceContextMode.PerSession,
        ConcurrencyMode = ConcurrencyMode.Single)]
    public partial class MemoryGameService
    {
        private static IList<MatchDto> _matches = new List<MatchDto>();
        public MemoryGameService() { }        
    }
}
