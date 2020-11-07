﻿using DataAccess.Context;
using DataAccess.Repositories;

namespace DataAccess.Units_of_work
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly MemoryGameContext _context;
        public IPlayerRepository Players { get; private set; }

        public UnitOfWork(MemoryGameContext context)
        {
            _context = context;
            Players = new PlayerRepository(_context);
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