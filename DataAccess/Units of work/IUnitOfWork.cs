using DataAccess.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Units_of_work
{
    public interface IUnitOfWork : IDisposable
    {
        IPlayerRepository Players { get; }
        int Complete();
    }
}
