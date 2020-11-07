using DataAccess.Context;
using DataAccess.Units_of_work;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGameService
{
    public class MemoryGameService : IMemoryGameService
    {
        public bool hasAccessRights(string email, string password)
        {
            var unitOfWork = new UnitOfWork(new MemoryGameContext());
            var player = unitOfWork.Players.Find(x => x.EmailAddress == email && x.Password == password);
            var p = player.First();
            Console.WriteLine(p.TotalScore);
            Console.WriteLine(p.EmailAddress + ":D");
            return true;
        }
    }
}
