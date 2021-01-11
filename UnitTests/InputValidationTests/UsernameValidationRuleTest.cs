using MemoryGame.InputValidation.RegistryValidation;
using Microsoft.VisualStudio.TestTools.UnitTesting;

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

            UsernameValidationRule usernameValidationRule = new UsernameValidationRule(username);
            bool expected = true;
            bool actual = usernameValidationRule.Validate();

            Assert.AreEqual(expected, actual);
        }
    }
}
