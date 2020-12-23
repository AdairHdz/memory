using MemoryGameService.Contracts;
using System;
using System.Collections.Generic;
using System.ServiceModel;

namespace MemoryGameService.Services
{    
    public class CardUncoveredEventArgs : EventArgs {
        public int CardIndex { get; set; }
    }

    [ServiceBehavior(InstanceContextMode = InstanceContextMode.PerSession)]
    public partial class MemoryGameService : ICardUncoveringService
    {
        public static event CardUncoveredEventHandler CardUncoveredEvent;
        public delegate void CardUncoveredEventHandler(object sender,
            CardUncoveredEventArgs eventArguments);
        ICardUncoveringCallback _callback = null;
        CardUncoveredEventHandler _cardUncoveredHandler = null;
        private Dictionary<ICardUncoveringCallback, string> _cardUncoveringServiceConsumers = new Dictionary<ICardUncoveringCallback, string>();

        
        public void Subscribe(string username)
        {
            _callback = OperationContext.Current.GetCallbackChannel<ICardUncoveringCallback>();
            _cardUncoveredHandler = new CardUncoveredEventHandler(CardUncoveredHandler);
            CardUncoveredEvent += _cardUncoveredHandler;
            _cardUncoveringServiceConsumers.Add(_callback, username);
        }

        public void Unsubscribe()
        {
            CardUncoveredEvent -= _cardUncoveredHandler;
        }
        public void NotifyCardWasUncovered(int cardIndex)
        {
            CardUncoveredEventArgs eventArguments =
                new CardUncoveredEventArgs
            {                
                CardIndex = cardIndex
            };

            CardUncoveredEvent(this, eventArguments);
        }

        public void CardUncoveredHandler(object sender,
            CardUncoveredEventArgs eventArguments)
        {
            _callback.UncoverCard(eventArguments.CardIndex);
        }
    }
}
