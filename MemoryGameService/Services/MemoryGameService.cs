using System.ServiceModel;

namespace MemoryGameService.Services
{
    [GlobalErrorHandlerBehavior(typeof(GlobalErrorHandler))]
    [ServiceBehavior(InstanceContextMode = InstanceContextMode.PerSession)]
    public partial class MemoryGameService
    {
    }
}
