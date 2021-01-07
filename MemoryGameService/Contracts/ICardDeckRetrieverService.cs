﻿using MemoryGame.MemoryGameService.Faults;
using MemoryGame.MemoryGameService.DataTransferObjects;
using System.ServiceModel;
using System.Collections.Generic;

namespace MemoryGameService.Contracts
{
    [ServiceContract]
    public interface ICardDeckRetrieverService
    {
        [FaultContract(typeof(CardDeckRetrievingFault))]
        [OperationContract]
        CardDeckDTO GetCardDeckAndCards(int cardDeckId);
        
        [OperationContract]
        IList<CardDeckInfoDto> GetCardDecksInfo();
    }
}
