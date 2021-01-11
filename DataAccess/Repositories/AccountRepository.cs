using DataAccess.Entities;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;

namespace DataAccess.Repositories
{
    /// <summary>
    /// The <c>AccountRepository</c> class.
    /// Adds specific operations that you probably would need to execute on the <c>Account</c> entity.
    /// </summary>
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

        /// <summary>
        /// Retrieves the <c>Account</c> entity that contains the specified username. 
        /// its associated <c>Player</c> entity is also retrieved.
        /// </summary>
        /// <param name="username">The username of the entity that you want to retrieve</param>
        /// <returns>The entity with the specified username, or null if there were no matches</returns>
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

        /// <summary>
        /// Retrieves the specified number of <c>Account</c> entities, each one with its associated <c>Player</c> entity.
        /// </summary>
        /// <param name="numberOfAccountsToBeRetrieved">The number of accounts that you want to retrieve from the database</param>
        /// <returns>The number of <c>Account</c> entities you specified. If you specified a number that is bigger
        /// than the actual ammount of entities in the database, all the entities will be retrieved.
        /// If there were no entities to be retrieved, an empty list will be returned.
        /// </returns>
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
