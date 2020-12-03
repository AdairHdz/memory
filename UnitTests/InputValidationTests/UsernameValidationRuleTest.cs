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
    public class UsernameValidationRuleTest
    {
        [TestMethod]
        [DataRow("AdairHz")]
        [DataRow("BaltixXx2k")]
        [DataRow("omar")]
        [DataRow("AdairBenjamin@16")]
        public void UsernameValidationReturnsTrue(string username)
        {
            RegistryData registryData = new RegistryData()
            {
                Username = username
            };

            UsernameValidationRule usernameValidationRule = new UsernameValidationRule();
            ValidationRuleResult validationRuleResult = usernameValidationRule.Validate(registryData);
            bool isValid = validationRuleResult.Status == ValidationRuleResult.SUCCESS;
            Assert.IsTrue(isValid);
        }
    }
}
