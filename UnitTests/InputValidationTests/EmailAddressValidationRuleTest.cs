using System;
using System.Text;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using MemoryGame.InputValidation.RegistryValidation;
using MemoryGame.InputValidation;

namespace UnitTests.InputValidationTests
{
    /// <summary>
    /// Descripción resumida de UnitTest1
    /// </summary>
    [TestClass]
    public class EmailAddressValidationRuleTest
    {

        [TestMethod]
        [DataRow("adairho16@gmail.com")]
        [DataRow("javier23-12.hola@hotmail.com")]
        [DataRow("AdairBenjamin_hernandez.ORTIZ@live.com.mx")]
        [DataRow("1243Xzyc_23dfg@outlook.com")]
        [DataRow("zS18012122@estudiantes.uv.mx")]
        [DataRow("qwertyuiopasdfghjklñzxcvbnmpoiuytrewqasdfghjklñzxcvbnmmnbvcx" +
            "qwertyuiopasdfghjklñzxcvbnmpoiuytrewqasdfghjklñzxcvbnmmnbvcx" +
            "qwertyuiopasdfghjklñzxcvbnmpoiuytrewqasdfghjklñzxcvbnmmnbvcx" +
            "qwertyuiopasdfghjklñzxcvbnmpoiuytrewqasdfghjklñzxcvbnmmnbvcx" +
            "qw@hotmail.com")]
        public void EmailAddressValidationReturnsTrue(string emailAddress)
        {

            EmailAddressValidationRule emailAddressValidationRule = new EmailAddressValidationRule(emailAddress);            
            bool expected = true;
            bool actual = emailAddressValidationRule.Validate();            
            Assert.AreEqual(expected, actual);
        }
    }
}
