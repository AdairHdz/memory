using Autofac.Extras.Moq;
using DataAccess;
using DataAccess.Entities;
using DataAccess.Repositories;
using DataAccess.Units_of_work;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace UnitTests.DataAccessLayerTests
{
    [TestClass]
    public class PlayerTest
    {
        [TestMethod]
        public void Test()
        {
            //var playerMock = new Mock<IRepository<Player>>();
            //playerMock.Verify(x => x.Add(It.IsAny<Player>()), Times.AtMostOnce());

            MemoryGameContext memoryGameContext = new MemoryGameContext();
            Mock<Repository<Player>> mockRepo = new Mock<Repository<Player>>(memoryGameContext);

            var data = new List<Player>()
            {
                new Player
                {
                    UserName = "AdairBenjamin",
                    EmailAddress = "adair@gmail.com",
                    Password = "12345678Ax$",
                    TotalScore = 0,
                    EmailWasVerified = false,
                    ActivationToken = "abcdef",
                    RecoveryToken = null
                },
                new Player
                {
                    UserName = "EduardoAldair",
                    EmailAddress = "eduardo@hotmail.com",
                    Password = "qwertyuiAx$",
                    TotalScore = 120,
                    EmailWasVerified = false,
                    ActivationToken = "zxcvbn",
                    RecoveryToken = null
                },
                new Player
                {
                    UserName = "IrvingLozada",
                    EmailAddress = "irving@outlook.com",
                    Password = "plmnbvgsAxc$",
                    TotalScore = 160,
                    EmailWasVerified = false,
                    ActivationToken = "dfgasv",
                    RecoveryToken = null
                }
            }.AsQueryable();

            var expectedResults = data.Where(player => player.TotalScore > 100);

            var mockSet = new Mock<DbSet<Player>>();
            mockSet.As<IQueryable<Player>>().Setup(m => m.Provider).Returns(data.Provider);
            mockSet.As<IQueryable<Player>>().Setup(m => m.Expression).Returns(data.Expression);
            mockSet.As<IQueryable<Player>>().Setup(m => m.ElementType).Returns(data.ElementType);
            mockSet.As<IQueryable<Player>>().Setup(m => m.GetEnumerator()).Returns(data.GetEnumerator());

            //Expression<Func<TEntity, bool>> predicate
            mockRepo.Setup(m => m.Find(It.IsAny<Func<Player, bool>>()))
                .Returns(mockSet.Object.AsEnumerable());

            List<Player> results = mockRepo.Object.Find(m => m.TotalScore > 100).ToList();
            mockRepo.Verify(m => m.Find(It.IsAny<Func<Player, bool>>()), Times.Once());

            Assert.AreEqual(results.Count, 2);
        }
    }
}
