using System.Data.Entity.Core;
using System.Data.SqlClient;
using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    [ServiceContract]
    public interface IAccountVerificationService
    {
        [OperationContract]
        bool SetAccountAsVerified(string emailAddress);
        [OperationContract]
        bool AssignNewActivationToken(string emailAddress, string activationToken);

        /// <summary>
        /// Assign a new recovery token to a player's account. 
        /// </summary>
        /// <param name="emailAddress">Email of the user who will be assigned the token.</param>
        /// <param name="recoveryToken">New token to be assigned.</param>
        /// <returns>True if the token was successfully assigned and false if not.</returns>
        /// <exception cref="SqlException">Thrown when there is not connection with the data base.</exception>
        /// <exception cref="EntityException">Thrown when there is no database.</exception>
        [OperationContract]
        bool AssignNewRecoveryToken(string emailAddress, string recoveryToken);
        [OperationContract]
        bool VerifyActivationToken(string emailAddress, string activationToken);
        [OperationContract]
        bool VerifyRecoveryToken(string emailAddress, string activationToken);
    }
}
