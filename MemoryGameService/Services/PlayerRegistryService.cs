using DataAccess;
using DataAccess.Entities;
using DataAccess.Units_of_work;
using MemoryGameService.Contracts;
using MemoryGame.MemoryGameService.DataTransferObjects;
using System.Data.SqlClient;
using MemoryGame.MemoryGameService.Faults;
using System.ServiceModel;
using System;

namespace MemoryGameService.Services
{
    public partial class MemoryGameService : IPlayerRegistryService
    {
        public bool RegisterNewPlayer(PlayerDTO playerDTO, string salt)
        {

            Account newAccount = new Account()
            {
                EmailAddress = playerDTO.EmailAddress,
                Username = playerDTO.Username,
                Password = playerDTO.Password,
                Salt = salt,
                EmailWasVerified = false,
                ActivationToken = playerDTO.VerificationToken
            };
            
            Player newPlayer = new Player()
            {
                Account = newAccount,
                EmailAddress = newAccount.EmailAddress,
                Score = 0
            };
            MemoryGameContext memoryGameContext = new MemoryGameContext();
            UnitOfWork unitOfWork = new UnitOfWork(memoryGameContext);
            try
            {
                var transaction = memoryGameContext.Database.BeginTransaction();
                unitOfWork.Accounts.Add(newAccount);
                unitOfWork.Players.Add(newPlayer);
                int rowsAffected = unitOfWork.Complete();
                transaction.Commit();
                return rowsAffected > 0;
            }
            catch (SqlException)
            {
                DatabaseConnectionLostFault databaseConnectionLostFault = new DatabaseConnectionLostFault();
                throw new FaultException<DatabaseConnectionLostFault>(databaseConnectionLostFault);
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                Console.ReadLine();
                throw;
            }
            finally
            {
                unitOfWork.Dispose();
            }
        }

        public bool EmailAddressIsAvailable(string emailAddress)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                Account accountWithTheSpecifiedEmailAddress = unitOfWork.Accounts.Get(emailAddress);
                if (accountWithTheSpecifiedEmailAddress == null)
                {
                    return true;
                }
                return false;
            }
            catch(SqlException)
            {
                DatabaseConnectionLostFault databaseConnectionLostFault = new DatabaseConnectionLostFault();
                throw new FaultException<DatabaseConnectionLostFault>(databaseConnectionLostFault);
            }
            finally
            {
                unitOfWork.Dispose();
            }
        }

        public bool UserNameIsAvailable(string username)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            try
            {
                //Player player = unitOfWork.Players.FindFirstOccurence(playerToFind => playerToFind.UserName == username);
                Account accountWithTheSpecifiedUsername = unitOfWork.Accounts.FindFirstOccurence(account => account.Username == username);
                if (accountWithTheSpecifiedUsername == null)
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
