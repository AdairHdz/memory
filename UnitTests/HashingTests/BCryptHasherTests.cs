using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

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

        [DataRow("abcdefghijk")]
        [DataRow("abcdefghijklmnopqrstuvwxyz")]
        [DataRow("SADFKfsjvcxmxcZ:_dses$%489439eiwdsqassAASDc.krdjgfdde594865ir3w")]
        [DataRow("contraseña insegura")]
        [DataRow("adair benjamin hernandez ortiz")]
        [DataRow("Contraseña123")]
        [TestMethod]
        public void CompareHashedPassword_DoesNotMatch(string password)
        {
            string hashedPassword = BCrypt.Net.BCrypt.HashPassword(password);

            bool expected = false;
            bool actual = BCrypt.Net.BCrypt.Verify(password + "abc", hashedPassword);

            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void Test()
        {
            string salt = BCrypt.Net.BCrypt.GenerateSalt(8);
            string password = "Hello there";
            string encryptedPassword = BCrypt.Net.BCrypt.HashPassword(password, salt);


            string secondPassword = "Hello there";
            string secondEncryptedPassword = BCrypt.Net.BCrypt.HashPassword(secondPassword, salt);

            Assert.AreEqual(encryptedPassword, secondEncryptedPassword);
        }
    }
}
