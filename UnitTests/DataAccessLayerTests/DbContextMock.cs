using DataAccess;
using DataAccess.Units_of_work;
using Moq;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;

namespace UnitTests.DataAccessLayerTests
{
    public static class DbContextMock
    {
        public static DbSet<T> GetQueryableMockDbSet<T>(List<T> sourceList) where T : class
        {
            var queryable = sourceList.AsQueryable();
            var dbSet = new Mock<DbSet<T>>();
            dbSet.As<IQueryable<T>>().Setup(m => m.Provider).Returns(queryable.Provider);
            dbSet.As<IQueryable<T>>().Setup(m => m.Expression).Returns(queryable.Expression);
            dbSet.As<IQueryable<T>>().Setup(m => m.ElementType).Returns(queryable.ElementType);
            dbSet.As<IQueryable<T>>().Setup(m => m.GetEnumerator()).Returns(() => queryable.GetEnumerator());
            dbSet.Setup(set => set.Add(It.IsAny<T>())).Callback<T>((s) => sourceList.Add(s));
            dbSet.Setup(set => set.Remove(It.IsAny<T>())).Callback<T>((s) => sourceList.Remove(s));
            dbSet.Setup(set => set.AddRange(It.IsAny<IEnumerable<T>>())).Callback<IEnumerable<T>>((s) => sourceList.AddRange(s));            
            return dbSet.Object;
        }

        public static MemoryGameContext GetContext<T>(DbSet<T> dbSet) where T: class
        {            
            var mockContext = new Mock<MemoryGameContext>();
            mockContext.Setup(c => c.Set<T>()).Returns(dbSet);
            return mockContext.Object;
        }

        public static UnitOfWork GetUnitOfWork(MemoryGameContext context)
        {
            var mockUnitOfWork = new Mock<UnitOfWork>(context);               
            return mockUnitOfWork.Object;
        }
    }
}
