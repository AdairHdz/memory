using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using DataAccess;
using DataAccess.Entities;
using DataAccess.Repositories;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;

namespace UnitTests.DataAccessLayerTests
{
    [TestClass]
    public class AccountTest
    {
        [TestMethod]
        public void TestMethod1()
        {
            
            //Mock<IRepository<Account>> mockRepo = new Mock<IRepository<Account>>(new MemoryGameContext());

            var data = new List<Account>()
            {
                new Account
                {
                    Username = "AdairBenjamin",
                    EmailAddress = "adair@gmail.com",
                    Password = "12345678Ax$",
                    EmailWasVerified = true,
                    ActivationToken = "abcdef",
                    RecoveryToken = null
                },
                new Account
                {
                    Username = "EduardoAldair",
                    EmailAddress = "eduardo@hotmail.com",
                    Password = "qwertyuiAx$",
                    EmailWasVerified = false,
                    ActivationToken = "zxcvbn",
                    RecoveryToken = null
                },
                new Account
                {
                    Username = "IrvingLozada",
                    EmailAddress = "irving@outlook.com",
                    Password = "plmnbvgsAxc$",
                    EmailWasVerified = false,
                    ActivationToken = "dfgasv",
                    RecoveryToken = null
                }
            }.AsQueryable();

            


        }
    }
}
