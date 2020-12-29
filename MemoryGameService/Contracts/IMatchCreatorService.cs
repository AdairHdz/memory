﻿using MemoryGame.MemoryGameService.DataTransferObjects;
using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    [ServiceContract(SessionMode = SessionMode.Required,
        CallbackContract = typeof(IMatchCreatorServiceCallback))]
    public interface IMatchCreatorService
    {
        [OperationContract(IsOneWay = true)]
        void CreateNewMatch(GameMatchConfigDto gameMatchDto);
        [OperationContract(IsOneWay = true)]
        void DeleteMatch(GameMatchConfigDto gameMatchDto);
    }

    [ServiceContract]
    public interface IMatchCreatorServiceCallback
    {
        [OperationContract(IsOneWay = true)]
        void NotifyNewMatchWasCreated();
    }
}
