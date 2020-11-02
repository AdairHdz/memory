using DataAccess.Context;
using DataAccess.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Units_of_work
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly MemoryGameContext _context;

        public UnitOfWork(MemoryGameContext context)
        {
            _context = context;
            Players = new PlayerRepository(_context);
        }

        public IPlayerRepository Players { get; private set; }

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
