﻿using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGame.MemoryGameService.Faults;
using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    [ServiceContract]
    public interface IAccountModifiabilityService
    {
        [FaultContract(typeof(DatabaseConnectionLostFault))]
        [OperationContract]
        bool SetNewPassword(string emailAddress, string newPassword);

        [FaultContract(typeof(DatabaseConnectionLostFault))]
        [OperationContract]
        bool ChangeUsername(string emailAddress, string newUsername);
    }
}
