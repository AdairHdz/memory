using DataAccess.Repositories;
using System;

namespace DataAccess.Units_of_work
{
    public interface IUnitOfWork : IDisposable
    {
        IPlayerRepository Players { get; }
        int Complete();
    }
}
