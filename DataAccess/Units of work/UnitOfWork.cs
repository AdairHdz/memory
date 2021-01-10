using DataAccess.Entities;
using DataAccess.Repositories;

namespace DataAccess.Units_of_work
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly MemoryGameContext _context;
        public IPlayerRepository Players { get; private set; }
        public ICardDeckRepository CardDecks { get; private set; }
        public Repository<Match> Matches { get; private set; }
        public IAccountRepository Accounts { get; private set; }

        public UnitOfWork(MemoryGameContext context)
        {
            _context = context;
            Players = new PlayerRepository(_context);
            CardDecks = new CardDeckRepository(_context);
            Matches = new Repository<Match>(_context);
            Accounts = new AccountRepository(_context);
        }

        

        public int Complete()
        {
            return _context.SaveChanges();
        }

        public void Dispose()
        {
            _context.Dispose();
        }
    }
}
