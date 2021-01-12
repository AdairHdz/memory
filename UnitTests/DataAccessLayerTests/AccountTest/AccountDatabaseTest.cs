using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Collections.Generic;
using DataAccess;
using DataAccess.Units_of_work;
using DataAccess.Entities;
using Utilities;

namespace UnitTests
{
    [TestClass]
    public class AccountDatabaseTest
    {
        [TestMethod]
        public void AddNewAccount_Success()
        {
            BCryptHashGenerator hashGenerator = new BCryptHashGenerator();
            string salt = hashGenerator.GenerateSalt();
            string encryptedPassword = hashGenerator.GenerateEncryptedString("adahplf0015", salt);
            
            Account account = new Account()
            {
                EmailAddress = "testPlayer@gmail.com",
                Username = "AdairHz",
                Password = encryptedPassword,
                Salt = salt,
                EmailWasVerified = true,
                ActivationToken = "3df4h",
                RecoveryToken = "df567"
            };
            Player player = new Player()
            {
                EmailAddress = "testPlayer@gmail.com",
                Score = 0
            };
            
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            unitOfWork.Players.Add(player);
            unitOfWork.Complete();

            unitOfWork.Accounts.Add(account);
            int expected = 1;
            int actual = unitOfWork.Complete();
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void AddNullAccount_DoesNotAffectDatabase()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            unitOfWork.Accounts.Add(null);
            int expected = 0;
            int actual = unitOfWork.Complete();
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void AddRangeAccounts_Success()
        {
            var newPlayers = new List<Player>()
            {
                new Player
                {
                    EmailAddress = "testPlayer2@gmail.com",
                    Score = 10
                },
                new Player
                {
                    EmailAddress = "testPlayer3@gmail.com",
                    Score = 10
                }
            };

            var newAccounts = new List<Account>()
            {
                new Account
                {
                    EmailAddress = "testPlayer2@gmail.com",
                    Username = "MultiP97",
                    Password = "adahplf0015",
                    Salt = "123456",
                    EmailWasVerified = true,
                    ActivationToken = "34jgd",
                    RecoveryToken = "67kud"
                },
                new Account
                {
                    EmailAddress = "testPlayer3@gmail.com",
                    Username = "Navys230",
                    Password = "adahplf0028",
                    Salt = "123456",
                    EmailWasVerified = false,
                    ActivationToken = "3456h",
                    RecoveryToken = "dfgt4"
                }
            };
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            unitOfWork.Players.AddRange(newPlayers);
            unitOfWork.Complete();

            unitOfWork.Accounts.AddRange(newAccounts);
            int expected = 2;
            int actual = unitOfWork.Complete();
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void AddNullRangeAccounts_DoesNotAffectDatabase()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            unitOfWork.Accounts.AddRange(null);
            int expected = 0;
            int actual = unitOfWork.Complete();
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void GetAllAccounts_Succes()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            var accountsRetrieved = unitOfWork.Accounts.GetAll();
            unitOfWork.Complete();
            int expected = 6;
            int actual = 0;
            foreach (var Account in accountsRetrieved)
            {
                actual++;
            }
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void FindFirstOccurrence_Success()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            Account accountRetrieved = unitOfWork.Accounts.FindFirstOccurence(Account => Account.EmailAddress == "testPlayer@gmail.com");
            unitOfWork.Complete();
            Assert.IsNotNull(accountRetrieved);
        }

        [TestMethod]
        public void FindFirstOccurrence_ReturnsNullBecauseThereWereNoMatches()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            Account AccountRetrieved = unitOfWork.Accounts.FindFirstOccurence(Account => Account.EmailAddress == "lizeth@hotmail.com");
            unitOfWork.Complete();
            Assert.IsNull(AccountRetrieved);
        }

        [TestMethod]
        public void Find_Succes()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            var accountsRetrieved = unitOfWork.Accounts.Find(p => p.EmailAddress == "testPlayer@gmail.com");
            unitOfWork.Complete();
            int expected = 1;
            int actual = 0;
            foreach (var Account in accountsRetrieved)
            {
                actual++;
            }
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void Find_ReturnsEmptyList()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            var accountsRetrieved = unitOfWork.Accounts.Find(p => p.EmailAddress == "adriancito@gmail.com");
            unitOfWork.Complete();
            int expected = 0;
            int actual = 0;
            foreach (var Account in accountsRetrieved)
            {
                actual++;
            }
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void Remove_Success()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            Account accountRetrieved = unitOfWork.Accounts.FindFirstOccurence(p => p.EmailAddress == "testPlayer@gmail.com");
            unitOfWork.Complete();
            Assert.IsNotNull(accountRetrieved);

            unitOfWork.Accounts.Remove(accountRetrieved);
            int expected = 1;
            int actual = unitOfWork.Complete();
            Assert.AreEqual(expected, actual);

            Player playerRetrieved = unitOfWork.Players.FindFirstOccurence(p => p.EmailAddress == "testPlayer@gmail.com");
            unitOfWork.Complete();
            Assert.IsNotNull(playerRetrieved);
        }

        [TestMethod]
        public void RemoveAll_Success()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            var AccountsRetrieved = unitOfWork.Accounts.Find(p => p.Salt == "123456");
            unitOfWork.Complete();

            unitOfWork.Accounts.RemoveRange(AccountsRetrieved);
            int expected = 2;
            int actual = unitOfWork.Complete();
            Assert.AreEqual(expected, actual);

            var playersRetrieved = unitOfWork.Players.Find(p => p.Score == 10);
            unitOfWork.Complete();
        }
    }
}
