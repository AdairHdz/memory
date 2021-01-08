using DataAccess;
using DataAccess.Entities;
using DataAccess.Units_of_work;
using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGame.MemoryGameService.Faults;
using MemoryGameService.Contracts;
using System.Data.SqlClient;
using System.ServiceModel;

namespace MemoryGameService.Services
{
    public partial class MemoryGameService : IAccountModifiabilityService
    {
        public bool ChangeUsername(string emailAddress, string newUsername)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                Account account = unitOfWork.Accounts.Get(emailAddress);
                if(account != null)
                {
                    account.Username = newUsername;
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

        public bool SetNewPassword(PasswordModificationCredentialsDto passwordModificationCredentials)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            string emailAddress = passwordModificationCredentials.EmailAddress;
            string salt = passwordModificationCredentials.Salt;
            string newPassword = passwordModificationCredentials.NewPassword;
            try
            {
                Account account = unitOfWork.Accounts.Get(emailAddress);
                if(account != null)
                {
                    account.Password = newPassword;
                    account.Salt = salt;
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
    }
}
