using DataAccess.Entities;
using System.Collections.Generic;

namespace DataAccess.Repositories
{
    /// <summary>
    /// The <c>IAccountRepository</c> interface.
    /// Defines the operations that the implementer of this interface will need to address.
    /// These operations must work on the <c>Account</c> entity.
    /// </summary>
    public interface IAccountRepository : IRepository<Account>
    {
        /// <summary>
        /// Retrieves the <c>Account</c> entity that contains the specified username. 
        /// its associated <c>Player</c> entity is also retrieved.
        /// </summary>
        /// <param name="username">The username of the entity that you want to retrieve</param>
        /// <returns>The entity with the specified username, or null if there were no matches</returns>
        Account GetAccountWithPlayerInfo(string username);
        /// <summary>
        /// Retrieves the specified number of <c>Account</c> entities, each one with its associated <c>Player</c> entity.
        /// </summary>
        /// <param name="numberOfAccountsToBeRetrieved">The number of accounts that you want to retrieve from the database</param>
        /// <returns>The number of <c>Account</c> entities you specified. If you specified a number that is bigger
        /// than the actual ammount of entities in the database, all the entities will be retrieved.
        /// If there were no entities to be retrieved, an empty list will be returned.
        /// </returns>
        IEnumerable<Account> GetNumberOfAccountsWithPlayerInfo(int numberOfAccountsToBeRetrieved);
    }
}
