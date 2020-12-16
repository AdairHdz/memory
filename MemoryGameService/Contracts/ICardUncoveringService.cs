using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    [ServiceContract(SessionMode=SessionMode.Required,
        CallbackContract = typeof(ICardUncoveringCallback))]
    public interface ICardUncoveringService
    {
        [OperationContract(IsOneWay = false, IsInitiating = true)]
        void Subscribe();
        [OperationContract(IsOneWay = false, IsInitiating = true)]
        void Unsubscribe();
        [OperationContract(IsOneWay = true)]
        void NotifyCardWasUncovered(int cardId);
    }

    public interface ICardUncoveringCallback
    {
        [OperationContract(IsOneWay = true)]
        void UncoverCard(int cardId);
    }
}
