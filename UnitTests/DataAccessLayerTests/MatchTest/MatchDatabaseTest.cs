using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Collections.Generic;
using DataAccess;
using DataAccess.Units_of_work;
using DataAccess.Entities;
using System;

namespace UnitTests
{
    [TestClass]
    public class MatchDatabaseTest
    {
        [TestMethod]
        public void AddNewMath_Success()
        {
            Match match = new Match()
            {
                Date = DateTime.Now,
                CardDeckId = 1,
                EmailAddress = "omarini2k@gmail.com"
            };

            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            unitOfWork.Matches.Add(match);
            int expected = 1;
            int actual = unitOfWork.Complete();
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void AddNullMatch_DoesNotAffectDatabase()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            unitOfWork.Matches.Add(null);
            int expected = 0;
            int actual = unitOfWork.Complete();
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void AddRangeMatches_Success()
        {
            var newMatches = new List<Match>()
            {
                new Match
                {
                    Date = DateTime.Now,
                    CardDeckId = 1,
                    EmailAddress = "adrianasaldana78@gmail.com"
                },
                new Match
                {
                    Date = DateTime.Now,
                    CardDeckId = 1,
                    EmailAddress = "omarini2k@gmail.com"
                }
            };
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            unitOfWork.Matches.AddRange(newMatches);
            int expected = 2;
            int actual = unitOfWork.Complete();
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void AddNullRangeMatches_DoesNotAffectDatabase()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            unitOfWork.Matches.AddRange(null);
            int expected = 0;
            int actual = unitOfWork.Complete();
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void GetAllMatches_Succes()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            var matchesRetrieved = unitOfWork.Matches.GetAll();
            unitOfWork.Complete();
            int expected = 4;
            int actual = 0;
            foreach (var match in matchesRetrieved)
            {
                actual++;
            }
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void FindFirstOccurrence_Success()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            Match matcheRetrieved = unitOfWork.Matches.FindFirstOccurence(match => match.EmailAddress == "obaltazar2000@gmail.com");
            unitOfWork.Complete();
            Assert.IsNotNull(matcheRetrieved);
        }

        [TestMethod]
        public void FindFirstOccurrence_ReturnsNullBecauseThereWereNoMatches()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            Match matcheRetrieved = unitOfWork.Matches.FindFirstOccurence(player => player.EmailAddress == "lizeth@hotmail.com");
            unitOfWork.Complete();
            Assert.IsNull(matcheRetrieved);
        }

        [TestMethod]
        public void Find_Succes()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            var matchesRetrieved = unitOfWork.Matches.Find(m => m.EmailAddress == "omarini2k@gmail.com");
            unitOfWork.Complete();
            int expected = 2;
            int actual = 0;
            foreach (var player in matchesRetrieved)
            {
                actual++;
            }
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void Find_ReturnsEmptyList()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            var matchesRetrieved = unitOfWork.Matches.Find(p => p.CardDeckId == 2);
            unitOfWork.Complete();
            int expected = 0;
            int actual = 0;
            foreach (var player in matchesRetrieved)
            {
                actual++;
            }
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void Remove_Success()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            Match matcheRetrieved = unitOfWork.Matches.FindFirstOccurence(p => p.EmailAddress == "adrianasaldana78@gmail.com");
            unitOfWork.Complete();
            Assert.IsNotNull(matcheRetrieved);

            unitOfWork.Matches.Remove(matcheRetrieved);
            int expected = 1;
            int actual = unitOfWork.Complete();
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void RemoveAll_Success()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            var matchesRetrieved = unitOfWork.Matches.Find(p => p.EmailAddress == "omarini2k@gmail.com");
            unitOfWork.Complete();

            unitOfWork.Matches.RemoveRange(matchesRetrieved);
            int expected = 2;
            int actual = unitOfWork.Complete();
            Assert.AreEqual(expected, actual);
        }
    }
}
