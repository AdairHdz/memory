using MemoryGame.InputValidation;
using MemoryGame.InputValidation.GenericValidations;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UnitTests.InputValidationTests
{
    [TestClass]
    public class NonEmptyFieldValidationTest
    {
        [DataRow("Adair")]
        [DataRow("5")]
        [DataRow("a")]
        [DataRow("abcdefg")]
        [DataRow("__e")]
        [DataRow("  hola")]
        [DataRow("     o    ")]
        [DataRow("e    ")]
        [TestMethod]
        public void NonEmptyFieldValidation_Passes(string dataToBeTested)
        {
            NonEmptyFieldValidation nonEmptyFieldValidationTest =
                new NonEmptyFieldValidation(dataToBeTested);
            ValidationRuleResult validationRuleResult = 
                nonEmptyFieldValidationTest.GetValidationRuleResult();

            bool expected = true;
            bool actual;

            if(validationRuleResult.Status == ValidationRuleResult.SUCCESS)
            {
                actual = true;
            }
            else
            {
                actual = false;
            }

            Assert.AreEqual(expected, actual);
        }

        [DataRow("")]
        [DataRow(" ")]
        [DataRow("                             ")]
        [DataRow("  ")]
        [TestMethod]
        public void NonEmptyFieldValidation_DoesNotPass(string dataToBeTested)
        {
            NonEmptyFieldValidation nonEmptyFieldValidationTest =
                new NonEmptyFieldValidation(dataToBeTested);
            ValidationRuleResult validationRuleResult =
                nonEmptyFieldValidationTest.GetValidationRuleResult();

            bool expected = false;
            bool actual;

            if (validationRuleResult.Status == ValidationRuleResult.SUCCESS)
            {
                actual = true;
            }
            else
            {
                actual = false;
            }

            Assert.AreEqual(expected, actual);

        }
    }
}
