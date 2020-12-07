using System.ServiceModel;

namespace MemoryGameService.Contracts
{

    [ServiceContract(CallbackContract = typeof(IChatClient))]
    public interface ICommunicationService
    {
        [OperationContract(IsOneWay = true)]
        void Join(string username);

        [OperationContract(IsOneWay = true)]
        void SendMessage(string message);
    }
}
