using MemoryGameService.Contracts;
using System;
using System.ServiceModel;

namespace MemoryGameService.Services
{    
    public class CardUncoveredEventArgs : EventArgs {
        public int CardId { get; set; }
    }

    public partial class MemoryGameService : ICardUncoveringService
    {
        public static event CardUncoveredEventHandler CardUncoveredEvent;
        public delegate void CardUncoveredEventHandler(object sender,
            CardUncoveredEventArgs eventArguments);
        private ICardUncoveringCallback _callback = null;
        private CardUncoveredEventHandler _cardUncoveredHandler = null;

        public void Subscribe()
        {
            _callback = OperationContext.Current.GetCallbackChannel<ICardUncoveringCallback>();
            _cardUncoveredHandler = new CardUncoveredEventHandler(CardUncoveredHandler);
            CardUncoveredEvent += _cardUncoveredHandler;
        }

        public void Unsubscribe()
        {
            CardUncoveredEvent -= _cardUncoveredHandler;
        }
        public void NotifyCardWasUncovered(int cardId)
        {
            CardUncoveredEventArgs eventArguments =
                new CardUncoveredEventArgs
            {
                CardId = cardId
            };
            CardUncoveredEvent(this, eventArguments);
        }

        public void CardUncoveredHandler(object sender,
            CardUncoveredEventArgs eventArguments)
        {
            _callback.UncoverCard(eventArguments.CardId);
        }
    }
}
