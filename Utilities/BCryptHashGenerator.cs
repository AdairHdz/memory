using System;

namespace Utilities
{
    public class BCryptHashGenerator : IEncryption
    {
        public string GenerateEncryptedString(string stringToBeEncrypted, string salt)
        {
            string hashedPassword = BCrypt.Net.BCrypt.HashPassword(stringToBeEncrypted, salt);
            return hashedPassword;
        }

        public bool Match(string normalString, string encryptedString)
        {
            bool isMatch = BCrypt.Net.BCrypt.Verify(normalString, encryptedString);            
            return isMatch;
        }

        public string GenerateSalt()
        {
            int randomNumber = GenerateRandomNumberBetweenRange(6, 12);
            return BCrypt.Net.BCrypt.GenerateSalt(randomNumber);
        }

        private int GenerateRandomNumberBetweenRange(int minimum, int maximum)
        {
            Random randomNumberGenerator = new Random();
            int randomNumber = randomNumberGenerator.Next(minimum, maximum);
            return randomNumber;
        }
    }
}
