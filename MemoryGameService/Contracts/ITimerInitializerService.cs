using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    [ServiceContract]
    public interface ITimerInitializerService
    {
        [OperationContract]
        void InitializeTimer();
    }
}
