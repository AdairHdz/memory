using DataAccess.Entities;
using DataAccess.Repositories;
using System;

namespace DataAccess.Units_of_work
{
    public interface IUnitOfWork : IDisposable
    {
        IPlayerRepository Players { get; }
        ICardDeckRepository CardDecks { get; }
        IRepository<Match> Matches { get; }
        IAccountRepository Accounts { get; }
        int Complete();
    }
}
