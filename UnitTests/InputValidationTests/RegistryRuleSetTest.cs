using MemoryGame.InputValidation;
using MemoryGame.InputValidation.RegistryValidation;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UnitTests.InputValidationTests
{
    [TestClass]
    public class RegistryRuleSetTest
    {
        [DataRow("adairho16@gmail.com")]
        [TestMethod]
        public void RegistryRuleSetAddOneValidationRuleSuccessfully(string emailAddress)
        {
            RegistryRuleSet registryRuleSet = new RegistryRuleSet();
            registryRuleSet.AddValidationRule(new EmailAddressValidationRule(emailAddress));
            int expected = 1;
            int actual = registryRuleSet.RegistryRules.Count;
            Assert.AreEqual(expected, actual);
        }
    }
}
