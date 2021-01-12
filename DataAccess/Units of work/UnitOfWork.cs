using DataAccess.Entities;
using DataAccess.Repositories;

namespace DataAccess.Units_of_work
{
    /// <summary>
    /// The <c>UnitOfWork</c> class.
    /// Represents a single transaction than involves n number of operations on the
    /// database.
    /// </summary>
    public class UnitOfWork : IUnitOfWork
    {        
        /// <summary>
        /// The <c>IPlayerRepository</c> that will be used to operate on <c>Player</c> entities.
        /// </summary>        
        public IPlayerRepository Players { get; private set; }

        /// <summary>
        /// The <c>ICardDeckRepository</c> that will be used to operate on <c>CardDeck</c> entities.
        /// </summary>        
        public ICardDeckRepository CardDecks { get; private set; }

        /// <summary>
        /// The <c>IRepository</c> that will be used to operate on <c>Match</c> entities.
        /// </summary>
        public IRepository<Match> Matches { get; private set; }

        /// <summary>
        /// The <c>IAccountRepository</c> that will be used to operate on <c>Account</c> entities.
        /// </summary>
        public IAccountRepository Accounts { get; private set; }

        private readonly MemoryGameContext _context;

        /// <summary>
        /// The <c>UnitOfWork</c> constructor.
        /// </summary>
        /// <param name="context">the context on which the <c>UnitOfWork</c> will operate.</param>
        public UnitOfWork(MemoryGameContext context)
        {
            _context = context;
            Players = new PlayerRepository(_context);
            CardDecks = new CardDeckRepository(_context);
            Matches = new Repository<Match>(_context);
            Accounts = new AccountRepository(_context);
        }        

        /// <summary>
        /// Completes the transaction on the database.
        /// </summary>
        /// <returns>The number of entries that were written to the database.</returns>
        public int Complete()
        {
            return _context.SaveChanges();
        }

        /// <summary>
        /// Frees up the resources of the database connection.
        /// </summary>
        public void Dispose()
        {
            _context.Dispose();
        }
    }
}
