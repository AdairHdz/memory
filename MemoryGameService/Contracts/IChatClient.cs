using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    [ServiceContract]
    public interface IChatClient
    {
        [OperationContract]
        void ReciveMessage(string username, string message);

    }
}