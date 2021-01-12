using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using DataAccess;
using DataAccess.Entities;
using DataAccess.Repositories;
using DataAccess.Units_of_work;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;

namespace UnitTests.DataAccessLayerTests
{
    [TestClass]
    public class AccountTest
    {
        List<Account> _data;
        DbSet<Account> _mockSet;
        MemoryGameContext _mockContext;
        AccountRepository _repository;
        UnitOfWork _unitOfWork;

        [TestInitialize]
        public void TestInitialize()
        {
            _data = new List<Account>()
            {
                new Account
                {
                    EmailAddress = "adairho16@gmail.com",
                    Username = "AdairHz",
                    Password = "adahplf0015",
                    Salt = "123456",
                    EmailWasVerified = true,
                    ActivationToken = null,
                    RecoveryToken = null,
                    Player = null
                },
                new Account
                {
                    EmailAddress = "ben.ja20@hotmail.com",
                    Username = "MultiP97",
                    Password = "adahplf0015",
                    Salt = "123456",
                    EmailWasVerified = true,
                    ActivationToken = null,
                    RecoveryToken = null,
                    Player = null
                },
                new Account
                {
                    EmailAddress = "juegosgratis178@gmail.com",
                    Username = "Navys230",
                    Password = "adahplf0028",
                    Salt = "123456",
                    EmailWasVerified = false,
                    ActivationToken = null,
                    RecoveryToken = null,
                    Player = null
                },
            };
            _mockSet = DbContextMock.GetQueryableMockDbSet(_data);
            _mockContext = DbContextMock.GetContext(_mockSet);
            _repository = new AccountRepository(_mockContext);
            _unitOfWork = new UnitOfWork(_mockContext);
        }



        [TestMethod]
        public void AddNewAccount_Success()
        {
            Account account = new Account()
            {
                EmailAddress = "perri@hotmail.com",
                Username = "Juanito",
                Password = "juanitoloco",
                Salt = "123456",
                EmailWasVerified = true,
                ActivationToken = null,
                RecoveryToken = null,
                Player = null
            };
            _repository.Add(account);
            int expected = 4;            
            int actual = _mockSet.Count();

            Assert.AreEqual(expected, actual);           
        }

        [TestMethod]
        public void AddNull_DoesNotAffectCollection()
        {
            _repository.Add(null);
            int expected = 3;
            int actual = _mockSet.Count();            
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void AddRange_Success()
        {
            var newAccounts = new List<Account>()
            {
                new Account
                {
                    EmailAddress = "holasoybenjamin@outlook.com",
                    Username = "Benjamin2008",
                    Password = "adahplf0015",
                    Salt = "123456",
                    EmailWasVerified = true,
                    ActivationToken = null,
                    RecoveryToken = null,
                    Player = null
                },
                new Account
                {
                    EmailAddress = "correoDePrueba26_uh@yahoo.com",
                    Username = "Bataco",
                    Password = "adahplf0015",
                    Salt = "123456",
                    EmailWasVerified = true,
                    ActivationToken = null,
                    RecoveryToken = null,
                    Player = null
                },
            };
            _repository.AddRange(newAccounts);
            int expected = 5;
            int actual = _mockSet.Count();
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void AddRange_DoesNotAffectCollection()
        {
            _repository.AddRange(null);
            int expected = 3;
            int actual = _mockSet.Count();
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void GetAll_Success()
        {
            var accountsRetrieved = _repository.GetAll();
            int expected = 3;
            int actual = accountsRetrieved.Count();
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void FindFirstOccurrence_Success()
        {            
            Account accountRetrieved = _repository.FindFirstOccurence(account => account.Username == "AdairHz");
            Assert.IsNotNull(accountRetrieved);
        }

        [TestMethod]
        public void FindFirstOccurrence_ReturnsNullBecauseThereWereNoMatches()
        {
            Account accountRetrieved = _repository.FindFirstOccurence(account => account.Username == "PedroPicaPiedra");
            Assert.IsNull(accountRetrieved);
        }

        [TestMethod]
        public void Find_Success()
        {                        
            var accountsRetrieved = _repository.Find(account => account.EmailWasVerified == false);
            int expected = 1;
            int actual = accountsRetrieved.Count();
            Assert.AreEqual(expected, actual);            
        }
                
        [TestMethod]
        public void Find_ReturnsEmptyList()
        {
            var accountsRetrieved = _repository.Find(s => s.EmailAddress == "adair");
            int expected = 0;
            int actual = accountsRetrieved.Count();
            Assert.AreEqual(expected, actual);            
        }

        [TestMethod]
        public void Remove_Success()
        {
            var accountrRetrieved = _repository.FindFirstOccurence(account => account.Username == "AdairHz");
            _repository.Remove(accountrRetrieved);
            int expected = 2;
            int actual = _mockSet.Count();
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void RemoveAll_Success()
        {
            var accounts = _repository.GetAll();
            _repository.RemoveRange(accounts);
            int expected = 0;
            int actual = _mockSet.Count();

            Assert.AreEqual(expected, actual);
        }

        private MemoryGameContext GetContext(DbSet<Account> dbSet)
        {
            var mockContext = new Mock<MemoryGameContext>();
            mockContext.Setup(c => c.Set<Account>()).Returns(dbSet);
            return mockContext.Object;
        }

        private static DbSet<T> GetQueryableMockDbSet<T>(List<T> sourceList) where T : class
        {
            
            var queryable = sourceList.AsQueryable();
            var mockSet = new Mock<DbSet<T>>();
            mockSet.As<IQueryable<T>>().Setup(m => m.Provider).Returns(queryable.Provider);
            mockSet.As<IQueryable<T>>().Setup(m => m.Expression).Returns(queryable.Expression);
            mockSet.As<IQueryable<T>>().Setup(m => m.ElementType).Returns(queryable.ElementType);
            mockSet.As<IQueryable<T>>().Setup(m => m.GetEnumerator()).Returns(() => queryable.GetEnumerator());            
            return mockSet.Object;
        }
    }
}
