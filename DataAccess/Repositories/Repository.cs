using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;

namespace DataAccess.Repositories
{
    public class Repository<TEntity> : IRepository<TEntity>
        where TEntity : class
    {
        protected readonly DbContext _context;
        public Repository(DbContext context)
        {
            _context = context;
        }

        public TEntity Get(object id)
        {
            return _context.Set<TEntity>().Find(id);
        }

        public IEnumerable<TEntity> GetAll()
        {
            return _context.Set<TEntity>().ToList();
        }

        public IEnumerable<TEntity> Find(Func<TEntity, bool> predicate)
        {
            IEnumerable<TEntity> matchingResults = new List<TEntity>();
            if (predicate != null)
            {
                matchingResults = _context.Set<TEntity>().Where(predicate);                
            }
            return matchingResults;
        }

        public TEntity FindFirstOccurence(Func<TEntity, bool> predicate)
        {
            IEnumerable<TEntity> results = _context.Set<TEntity>().Where(predicate);
            if (results.Any())
            {
                return results.First();
            }
            return null;
        }

        public void Add(TEntity entity)
        {
            if(entity != null)
            {
                _context.Set<TEntity>().Add(entity);
            }
        }

        public void AddRange(IEnumerable<TEntity> entities)
        {
            if(entities != null && entities.Any())
            {
                _context.Set<TEntity>().AddRange(entities);
            }            
        }

        public void Remove(TEntity entity)
        {
            if (entity != null)
            {
                _context.Set<TEntity>().Remove(entity);
            }
        }

        public void RemoveRange(IEnumerable<TEntity> entities)
        {
            if(entities != null && entities.Any())
            {
                _context.Set<TEntity>().RemoveRange(entities);
            }            
        }
    }
}
