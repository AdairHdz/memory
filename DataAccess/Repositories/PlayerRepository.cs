using DataAccess.Context;
using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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
