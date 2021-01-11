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
            return BCrypt.Net.BCrypt.GenerateSalt(10);
        }
    }
}
