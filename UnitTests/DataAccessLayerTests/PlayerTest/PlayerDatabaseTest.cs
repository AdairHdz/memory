using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Collections.Generic;
using DataAccess;
using DataAccess.Units_of_work;
using DataAccess.Entities;
using System.Data.Entity.Core;
using System.Data.Entity.Infrastructure;

namespace UnitTests
{
    [TestClass]
    public class PlayerDatabaseTest
    {
        [TestMethod]
        public void AddNewPlayer_Success()
        {
            Player player = new Player()
            {
                EmailAddress = "eliam@hotmail.com",
                Score = 0
            };

            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            unitOfWork.Players.Add(player);
            int expected = 1;
            int actual = unitOfWork.Complete();
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void AddNullPlayer_DoesNotAffectDatabase()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            unitOfWork.Players.Add(null);
            int expected = 0;
            int actual = unitOfWork.Complete();
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void AddRangePlayers_Success()
        {
            var newPlayers = new List<Player>()
            {
                new Player
                {
                    EmailAddress = "titoperez@hotmail.com",
                    Score = 10
                },
                new Player
                {
                    EmailAddress = "adrianctio@hotmail.com",
                    Score = 10
                }
            };
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            unitOfWork.Players.AddRange(newPlayers);
            int expected = 2;
            int actual = unitOfWork.Complete();
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void AddNullRangePlayers_DoesNotAffectDatabase()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            unitOfWork.Players.AddRange(null);
            int expected = 0;
            int actual = unitOfWork.Complete();
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void GetAllPlayers_Succes()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            var playersRetrieved = unitOfWork.Players.GetAll();
            unitOfWork.Complete();
            int expected = 7;
            int actual = 0;
            foreach(var player in playersRetrieved)
            {
                actual++;
            }
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void FindFirstOccurrence_Success()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            Player playerRetrieved = unitOfWork.Players.FindFirstOccurence(player => player.EmailAddress == "adrianctio@hotmail.com");
            unitOfWork.Complete();
            Assert.IsNotNull(playerRetrieved);
        }

        [TestMethod]
        public void FindFirstOccurrence_ReturnsNullBecauseThereWereNoMatches()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            Player playerRetrieved = unitOfWork.Players.FindFirstOccurence(player => player.EmailAddress == "lizeth@hotmail.com");
            unitOfWork.Complete();
            Assert.IsNull(playerRetrieved);
        }

        [TestMethod]
        public void Find_Succes()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            var playersRetrieved = unitOfWork.Players.Find(p => p.Score == 10);
            unitOfWork.Complete();
            int expected = 2;
            int actual = 0;
            foreach (var player in playersRetrieved)
            {
                actual++;
            }
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void Find_ReturnsEmptyList()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            var playersRetrieved = unitOfWork.Players.Find(p => p.Score > 15);
            unitOfWork.Complete();
            int expected = 0;
            int actual = 0;
            foreach (var player in playersRetrieved)
            {
                actual++;
            }
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void Remove_Success()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            Player playerRetrieved = unitOfWork.Players.FindFirstOccurence(p => p.EmailAddress == "eliam@hotmail.com");
            unitOfWork.Complete();
            Assert.IsNotNull(playerRetrieved);

            unitOfWork.Players.Remove(playerRetrieved);
            int expected = 1;
            int actual = unitOfWork.Complete();
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void RemoveAll_Success()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            var playersRetrieved = unitOfWork.Players.Find(p => p.Score == 10);
            unitOfWork.Complete();

            unitOfWork.Players.RemoveRange(playersRetrieved);
            int expected = 2;
            int actual = unitOfWork.Complete();
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        [ExpectedException(typeof(DbUpdateException), "Non existing database")]
        public void NonExistingDatabase()
        {
            Player player = new Player()
            {
                EmailAddress = "eliam@hotmail.com",
                Score = 0
            };

            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            unitOfWork.Players.Add(player);
            unitOfWork.Complete();
            //Assert.ThrowsException<EntityException>();
        }
    }
}
