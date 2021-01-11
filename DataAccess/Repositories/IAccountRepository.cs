using DataAccess.Entities;
using System.Collections.Generic;

namespace DataAccess.Repositories
{
    public interface IAccountRepository : IRepository<Account>
    {
        Account GetAccountWithPlayerInfo(string username);
        IEnumerable<Account> GetNumberOfAccountsWithPlayerInfo(int numberOfAccountsToBeRetrieved);
    }
}
