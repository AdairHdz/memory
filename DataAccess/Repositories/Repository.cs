using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;

namespace DataAccess.Repositories
{
    /// <summary>
    /// The <c>Repository</c> class.
    /// It provides the basic operations for working with the entities from
    /// the persistence layer.
    /// This basic operations are:
    /// <list type="bullet">
    /// <item>
    /// <term>Get</term>
    /// <description>Retrieves the entity that possess the specified primary key.</description>
    /// </item>
    /// <item>
    /// <term>GetAll</term>
    /// <description>Retrieves all the entities from the database.</description>
    /// </item>
    /// <item>
    /// <term>Find</term>
    /// <description>Retrieves all the entities that meet the given condition.</description>
    /// </item>
    /// <item>
    /// <term>FindFirsOccurence</term>
    /// <description>Retrieves the first entity that meets the given condition.</description>
    /// </item>
    /// <item>
    /// <term>Add</term>
    /// <description>Adds the given entity.</description>
    /// </item>
    /// <item>
    /// <term>AddRange</term>
    /// <description>Adds the given entities.</description>
    /// </item>
    /// <item>
    /// <term>Remove</term>
    /// <description>Removes the given entity.</description>
    /// </item>
    /// <item>
    /// <term>RemoveRange</term>
    /// <description>Removes the given entities.</description>
    /// </item>
    /// </list>
    /// </summary>
    /// <typeparam name="TEntity">The entity you want to create a repository for.</typeparam>
    public class Repository<TEntity> : IRepository<TEntity>
        where TEntity : class
    {
        /// <summary>
        /// The DbContext that the repository will work with.
        /// It is readonly because it can only be set on the Repository constructor.
        /// </summary>
        protected readonly DbContext _context;
        /// <summary>
        /// The <c>Repository</c> constructor.
        /// </summary>
        /// <param name="context">The DbContext that the repository will work with.</param>
        public Repository(DbContext context)
        {
            _context = context;
        }

        /// <summary>
        /// Retrieves the entity that possess the specified primary key.
        /// </summary>
        /// <param name="id">the primary key of the entity you would like to look for on the database</param>
        /// <returns>The entity that possess the specified key, or null is the entity does not exist.</returns>
        public TEntity Get(object id)
        {
            return _context.Set<TEntity>().Find(id);
        }

        /// <summary>
        /// Retrieves all the entities from the database.
        /// </summary>
        /// <returns>All the entities from the database, or an empty collection if there are no entities.</returns>
        public IEnumerable<TEntity> GetAll()
        {
            return _context.Set<TEntity>().ToList();
        }

        /// <summary>
        /// Retrieves all the entities that meet the given condition.
        /// </summary>
        /// <param name="predicate">The condition that entities need to meet to be included in the returned collection</param>
        /// <returns>All the entities that meet the given condition, or an empty list if no entity met the condition</returns>
        public IEnumerable<TEntity> Find(Func<TEntity, bool> predicate)
        {
            IEnumerable<TEntity> matchingResults = new List<TEntity>();
            if (predicate != null)
            {
                matchingResults = _context.Set<TEntity>().Where(predicate);                
            }
            return matchingResults;
        }

        /// <summary>
        /// Retrieves the first entity that meets the given condition.
        /// </summary>
        /// <param name="predicate">The condition that an entity need to meet to be returned</param>
        /// <returns>The first entity that meets the given condition, or null if no entity met the condition</returns>
        public TEntity FindFirstOccurence(Func<TEntity, bool> predicate)
        {
            IEnumerable<TEntity> results = _context.Set<TEntity>().Where(predicate);
            if (results.Any())
            {
                return results.First();
            }
            return null;
        }

        /// <summary>
        /// Adds the given entity.
        /// </summary>
        /// <param name="entity">The entity to be added.</param>
        public void Add(TEntity entity)
        {
            if(entity != null)
            {
                _context.Set<TEntity>().Add(entity);
            }
        }

        /// <summary>
        /// Adds the given entities.
        /// </summary>
        /// <param name="entities">The collection of entities to be added</param>
        public void AddRange(IEnumerable<TEntity> entities)
        {
            if(entities != null && entities.Any())
            {
                _context.Set<TEntity>().AddRange(entities);
            }            
        }

        /// <summary>
        /// Removes the given entity.
        /// Note that you need to pass exactly the same entity that you want to remove.
        /// </summary>
        /// <param name="entity">The entity to be removed.</param>
        public void Remove(TEntity entity)
        {
            if (entity != null)
            {
                _context.Set<TEntity>().Remove(entity);
            }
        }

        /// <summary>
        /// Removes the given collection of entities.
        /// </summary>
        /// <param name="entities">the collection of entities to be removed.</param>
        public void RemoveRange(IEnumerable<TEntity> entities)
        {
            if(entities != null && entities.Any())
            {
                _context.Set<TEntity>().RemoveRange(entities);
            }            
        }
    }
}
