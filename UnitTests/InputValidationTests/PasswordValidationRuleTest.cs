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
    public class PasswordValidationRuleTest
    {
        private PasswordValidationRule _passwordValidationRule;

        public PasswordValidationRuleTest()
        {
            _passwordValidationRule = new PasswordValidationRule();
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
            RegistryData registryData = new RegistryData()
            {
                Password = password
            };
            
            ValidationRuleResult validationRuleResult = _passwordValidationRule.Validate(registryData);
            bool isValid = validationRuleResult.Status == ValidationRuleResult.SUCCESS;
            Assert.IsTrue(isValid);
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
            RegistryData registryData = new RegistryData()
            {
                Password = password
            };

            ValidationRuleResult validationRuleResult = _passwordValidationRule.Validate(registryData);
            bool isValid = validationRuleResult.Status == ValidationRuleResult.SUCCESS;
            Assert.IsFalse(isValid);

        }
    }
}
