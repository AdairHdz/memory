﻿using DataAccess.Models;

namespace DataAccess.Repositories
{
    public interface IPlayerRepository : IRepository<Player>
    {
        void DoSomething();
    }
}
