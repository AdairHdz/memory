using DataAccess.Entities;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;

namespace DataAccess.Repositories
{
    public class AccountRepository : Repository<Account>, IAccountRepository
    {
        public MemoryGameContext MemoryGameContext
        {
            get
            {
                return _context as MemoryGameContext;
            }
        }

        public AccountRepository(DbContext context) : base(context) { }

        Account IAccountRepository.GetAccountWithPlayerInfo(string username)
        {
            IQueryable<Account> accountsRetrieved = MemoryGameContext.Accounts.Where(account => account.Username == username);
            if (accountsRetrieved.Count() == 1)
            {
                Account account = accountsRetrieved.First();
                return account;
            }
            return null;
        }

        IEnumerable<Account> IAccountRepository.GetNumberOfAccountsWithPlayerInfo(int numberOfAccountsToBeRetrieved)
        {
            IEnumerable<Account> accounts = new List<Account>();
            IEnumerable<Account> accountsRetrieved = MemoryGameContext.Accounts.Include("Player");
            if(accountsRetrieved != null)
            {
                accounts = accountsRetrieved.OrderByDescending(account => account.Player.Score)
                    .Take(numberOfAccountsToBeRetrieved);
            }
            return accounts;
        }
    }
}
