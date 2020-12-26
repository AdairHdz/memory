using System.ServiceModel;

namespace MemoryGameService.Services
{
    //[GlobalErrorHandlerBehavior(typeof(GlobalErrorHandler))]
    [ServiceBehavior(InstanceContextMode = InstanceContextMode.PerSession,
        ConcurrencyMode = ConcurrencyMode.Single)]
    public partial class MemoryGameService
    {
    }
}
