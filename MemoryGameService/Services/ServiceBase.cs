using log4net;

namespace MemoryGameService.Services
{
    public class ServiceBase
    {
        private readonly ILog _log;

        public ServiceBase()
        {
            _log = LogManager.GetLogger(typeof(ServiceBase));
            _log.Error("This one should work");
        }

    }
}
