using MemoryGame.InputValidation.RegistryValidation;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace UnitTests.InputValidationTests
{
    [TestClass]
    public class PasswordValidationRuleTest
    {        

        public PasswordValidationRuleTest()
        {
            
        }

        [TestMethod]
        [DataRow("Abcdefg@12.")]
        [DataRow("CIONTraseña_2712@#$%hola")]
        [DataRow("Ada1r@en")]
        [DataRow("Ada1r@enjaMinHernandezóRT")]
        [DataRow("Ada1r@enja$5")]
        [DataRow("AIOPU68?H91jeje")]
        public void PasswordValidationReturnsTrue(string password)
        {
            PasswordValidationRule passwordValidationRule = new PasswordValidationRule(password);
            bool expected = true;
            bool actual = passwordValidationRule.Validate();
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        [DataRow("")]
        [DataRow("a")]
        [DataRow("adairbenjamin")]
        [DataRow("adjskdfhgfjlksnvlmvhfvuihfcvjbcxkncvxmlnbhglnlvjgfncgfiubmui")]
        [DataRow("adjskdfhgfjlksnvlmvhfvuihfcvjbcxkncvxmlnbhglnlvjgfncgfiSX23%ubmui")]
        [DataRow("OMARBALTAZAR")]
        [DataRow("OMARBALTAZAR21")]
        [DataRow("holaComoestasGracias%$")]
        public void PasswordValidationReturnsFalse(string password)
        {

            PasswordValidationRule passwordValidationRule = new PasswordValidationRule(password);
            bool expected = false;
            bool actual = passwordValidationRule.Validate();
            Assert.AreEqual(expected, actual);

        }
    }
}
