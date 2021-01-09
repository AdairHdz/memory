using DataAccess;
using DataAccess.Entities;
using DataAccess.Repositories;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;

namespace UnitTests.DataAccessLayerTests
{
    [TestClass]
    public class PlayerTest
    {
        public PlayerTest()
        {

        }

        /*[TestMethod]
        public void Test()
        {
            
            Mock<IPlayerRepository> mockRepo = new Mock<IPlayerRepository>();

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
            mockSet.As<IQueryable<Player>>().Setup(m => m.Provider).Returns(expectedResults.Provider);
            mockSet.As<IQueryable<Player>>().Setup(m => m.Expression).Returns(expectedResults.Expression);
            mockSet.As<IQueryable<Player>>().Setup(m => m.ElementType).Returns(expectedResults.ElementType);
            mockSet.As<IQueryable<Player>>().Setup(m => m.GetEnumerator()).Returns(expectedResults.GetEnumerator());

            //Expression<Func<TEntity, bool>> predicate
            mockRepo.Setup(m => m.Find(It.IsAny<Func<Player, bool>>()))
                //.Returns(mockSet.Object.AsEnumerable());
                .Returns(expectedResults);

            List<Player> results = mockRepo.Object.Find(m => m.TotalScore > 100).ToList();
            mockRepo.Verify(m => m.Find(It.IsAny<Func<Player, bool>>()), Times.Once());

            Assert.AreEqual(results.Count, 2);
        }
        /*

        [TestMethod]
        public void Test2()
        {
            MemoryGameContext memoryGameContext = new MemoryGameContext();
            Mock<IPlayerRepository> mockRepo = new Mock<IPlayerRepository>();

            string emailAddress = "adairho16@gmail.com";

            Player playerToBeRetrieved = new Player()
            {
                EmailAddress = emailAddress,
                UserName = "AdairHz",
                Password = "adahplf0015",
                EmailWasVerified = false,
                TotalScore = 120,
                ActivationToken = null,
                RecoveryToken = null
            };

            mockRepo.Setup(x => x.Get(emailAddress))
                .Returns(playerToBeRetrieved);

            Assert.AreEqual(playerToBeRetrieved.EmailAddress, emailAddress);
                
        }
        /*
        [TestMethod]
        public void Repository_GetAll_Successfully()
        {
            MemoryGameContext memoryGameContext = new MemoryGameContext();
            Mock<IPlayerRepository> mockRepo = new Mock<IPlayerRepository>();
            
            IQueryable<Player> players = GetPlayers();

            var expectedResults = players.ToList();

            mockRepo.Setup(x => x.GetAll())
                .Returns(players);

            Assert.AreEqual(expectedResults.Count, 3);
        }
        */
        /*
    [TestMethod]
    public void Test4()
    {
        var mockedDbSet = GetQueryableMockDbSet(GetPlayers());
        mockedDbSet.Add(new Player());
        int expected = 4;
        int actual = GetPlayers().Count;
        Assert.AreEqual(expected, actual);                
    }

    private DbSet<Player> GetQueryableMockDbSet(List<Player> sourceList)
    {
        var queryable = sourceList.AsQueryable();
        var mockedDbSet = new Mock<DbSet<Player>>();
        mockedDbSet.As<IQueryable<Player>>().Setup(m => m.Provider).Returns(queryable.Provider);
        mockedDbSet.As<IQueryable<Player>>().Setup(m => m.Expression).Returns(queryable.Expression);
        mockedDbSet.As<IQueryable<Player>>().Setup(m => m.ElementType).Returns(queryable.ElementType);
        mockedDbSet.As<IQueryable<Player>>().Setup(m => m.GetEnumerator()).Returns(queryable.GetEnumerator());

        //mockedDbSet.Setup(x => x.Add(It.IsAny<Player>())).Callback<Player>((s) => sourceList.Add(s));
        mockedDbSet.Setup(x => x.Remove(It.IsAny<Player>())).Callback<Player>((s) => sourceList.Remove(s));
        //mockedDbSet.Setup(x => x.Find(It.IsAny<Func<Player, bool>>())).Returns(sourceList.Find(x => x.));
        mockedDbSet.Setup(x => x.ToList()).Returns(sourceList);
        //mockedDbSet.Setup(x => x.Where(It.IsAny<Func<Player, bool>>())).Returns(sourceList.Where(x => x.EmailWasVerified));


        return mockedDbSet.Object;
    }


    private DbSet<T> GetQueryableMockDbSet<T>(List<T> sourceList) where T : class
    {
        var queryable = sourceList.AsQueryable();
        var mockedDbSet = new Mock<DbSet<T>>();
        mockedDbSet.As<IQueryable<T>>().Setup(m => m.Provider).Returns(queryable.Provider);
        mockedDbSet.As<IQueryable<T>>().Setup(m => m.Expression).Returns(queryable.Expression);
        mockedDbSet.As<IQueryable<T>>().Setup(m => m.ElementType).Returns(queryable.ElementType);
        mockedDbSet.As<IQueryable<T>>().Setup(m => m.GetEnumerator()).Returns(queryable.GetEnumerator());

        mockedDbSet.Setup(x => x.Add(It.IsAny<T>())).Callback<T>((s) => sourceList.Add(s));
        mockedDbSet.Setup(x => x.Find(It.IsAny<Func<Player, bool>>())).Returns();


        return null;
    }


    }
        */
    }
}
