using DataAccess;
using DataAccess.Units_of_work;
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
                var player = unitOfWork.Players.Get(emailAddress);
                if(player != null)
                {
                    player.UserName = newUsername;
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

        public bool SetNewPassword(string emailAddress, string newPassword)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                var player = unitOfWork.Players.Get(emailAddress);
                if(player != null)
                {
                    player.Password = newPassword;
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
