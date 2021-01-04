using log4net;
using MemoryGame.MemoryGameService.DataTransferObjects;
using System.Collections.Generic;
using System.ServiceModel;

namespace MemoryGameService.Services
{
    //[GlobalErrorHandlerBehavior(typeof(GlobalErrorHandler))]
    [ServiceBehavior(InstanceContextMode = InstanceContextMode.PerSession,
        ConcurrencyMode = ConcurrencyMode.Single)]
    public partial class MemoryGameService : ServiceBase
    {
        private readonly ILog _log;
        private static IList<GameMatchDto> _matches = new List<GameMatchDto>();
        public MemoryGameService() : base()
        {
            _log = LogManager.GetLogger(typeof(MemoryGameService));
        }

        

    }
}
