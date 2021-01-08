using DataAccess;
using DataAccess.Entities;
using DataAccess.Units_of_work;
using MemoryGame.MemoryGameService.Faults;
using MemoryGameService.Contracts;
using System.Data.SqlClient;
using System.ServiceModel;

namespace MemoryGameService.Services
{
    public partial class MemoryGameService : IAccountVerificationService
    {
        public bool SetAccountAsVerified(string emailAddress)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                Account retrievedAccount = unitOfWork.Accounts.Get(emailAddress);
                if(retrievedAccount != null)
                {
                    retrievedAccount.EmailWasVerified = true;
                    int rowsModified = unitOfWork.Complete();
                    return rowsModified == 1;
                }
                return false;
            }
            catch (SqlException)
            {
                DatabaseConnectionLostFault databaseConnectionLostFault = new DatabaseConnectionLostFault();
                throw new FaultException<DatabaseConnectionLostFault>(databaseConnectionLostFault);
            }
            finally
            {
                unitOfWork.Dispose();
            }

        }

        public bool AssignNewVerificationToken(string emailAddress, string verificationToken)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                Account retrievedAccount = unitOfWork.Accounts.Get(emailAddress);
                if (retrievedAccount != null)
                {
                    retrievedAccount.ActivationToken = verificationToken;
                    int rowsModified = unitOfWork.Complete();
                    return rowsModified == 1;
                }
                return false;
            }
            catch (SqlException)
            {
                DatabaseConnectionLostFault databaseConnectionLostFault = new DatabaseConnectionLostFault();
                throw new FaultException<DatabaseConnectionLostFault>(databaseConnectionLostFault);
            }
            finally
            {
                unitOfWork.Dispose();
            }

        }

        public bool VerifyToken(string emailAddress, string verificationToken)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                Account retrievedAccount = unitOfWork.Accounts.FindFirstOccurence(account => account.EmailAddress == emailAddress && account.ActivationToken == verificationToken);
                if(retrievedAccount != null)
                {
                    return true;
                }
                return false;
            }
            catch (SqlException)
            {
                DatabaseConnectionLostFault databaseConnectionLostFault = new DatabaseConnectionLostFault();
                throw new FaultException<DatabaseConnectionLostFault>(databaseConnectionLostFault);
            }
            finally
            {
                unitOfWork.Dispose();
            }           
        }
    }
}
