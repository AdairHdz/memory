using DataAccess.Entities;
using DataAccess.Repositories;
using System;

namespace DataAccess.Units_of_work
{
    /// <summary>
    /// The <c>IUnitOfWork</c> interface.
    /// Defines the operations that the implementer of this interface will need to address.
    /// </summary>
    public interface IUnitOfWork : IDisposable
    {
        /// <summary>
        /// The <c>IPlayerRepository</c> that will be used to operate on <c>Player</c> entities.
        /// </summary>      
        IPlayerRepository Players { get; }

        /// <summary>
        /// The <c>ICardDeckRepository</c> that will be used to operate on <c>CardDeck</c> entities.
        /// </summary>        
        ICardDeckRepository CardDecks { get; }

        /// <summary>
        /// The <c>IRepository</c> that will be used to operate on <c>Match</c> entities.
        /// </summary>
        IRepository<Match> Matches { get; }

        /// <summary>
        /// The <c>IAccountRepository</c> that will be used to operate on <c>Account</c> entities.
        /// </summary>
        IAccountRepository Accounts { get; }


        /// <summary>
        /// Completes the transaction on the database.
        /// </summary>
        /// <returns>The number of entries that were written to the database.</returns>
        int Complete();
    }
}
