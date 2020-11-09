using DataAccess.Context;
using DataAccess.Models;
using System;

namespace DataAccess.Repositories
{
    public class PlayerRepository : Repository<Player>, IPlayerRepository
    {

        public MemoryGameContext MemoryGameContext
        {
            get { return _context as MemoryGameContext; }
        }

        public PlayerRepository(MemoryGameContext context):base(context)
        {
            
        }

        public void DoSomething()
        {
            Console.WriteLine("Jelou");
        }
    }
}
