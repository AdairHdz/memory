using DataAccess.Entities;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;

namespace DataAccess.Repositories
{
    /// <inheritdoc/>
    public class AccountRepository : Repository<Account>, IAccountRepository
    {
        /// <summary>
        /// The DbContext that the <c>AccountRepository</c> will work with.
        /// It is derived from the base class: <c>Repository</c>
        /// </summary>
        public MemoryGameContext MemoryGameContext
        {
            get
            {
                return _context as MemoryGameContext;
            }
        }

        /// <summary>
        /// The <c>AccountRepository</c> constructor.
        /// </summary>
        /// <param name="context">The DbContext that the <c>AccountRepository</c> will work with.</param>
        public AccountRepository(DbContext context) : base(context) { }

        /// <inheritdoc/>
        public Account GetAccountWithPlayerInfo(string username)
        {
            IQueryable<Account> accountsRetrieved = MemoryGameContext.Accounts.Where(account => account.Username == username);
            if (accountsRetrieved != null)
            {
                Account account = accountsRetrieved.First();
                return account;
            }
            return null;
        }

        /// <inheritdoc/>
        public IEnumerable<Account> GetNumberOfAccountsWithPlayerInfo(int numberOfAccountsToBeRetrieved)
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
