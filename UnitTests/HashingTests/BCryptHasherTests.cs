using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UnitTests.HashingTests
{
    [TestClass]
    public class BCryptHasherTests
    {
        [DataRow("abcdefghijk")]
        [DataRow("abcdefghijklmnopqrstuvwxyz")]
        [DataRow("SADFKfsjvcxmxcZ:_dses$%489439eiwdsqassAASDc.krdjgfdde594865ir3w")]
        [DataRow("contraseña insegura")]
        [DataRow("adair benjamin hernandez ortiz")]
        [DataRow("Contraseña123")]
        [TestMethod]
        public void CompareHashedPassword_Matches(string password)
        {
            string hashedPassword = BCrypt.Net.BCrypt.HashPassword(password);

            bool expected = true;
            bool actual = BCrypt.Net.BCrypt.Verify(password, hashedPassword);

            Assert.AreEqual(expected, actual);

        }
    }
}
