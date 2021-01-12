namespace Utilities
{
    /// <summary>
    /// The <c>BCryptHashGenerator</c> class.
    /// It uses BCrypt to encrypt a string with the provided salt.
    /// </summary>
    public class BCryptHashGenerator : IEncryption
    {
        /// <inheritdoc/>
        public string GenerateEncryptedString(string stringToBeEncrypted, string salt)
        {
            string hashedPassword = BCrypt.Net.BCrypt.HashPassword(stringToBeEncrypted, salt);
            return hashedPassword;
        }

        /// <inheritdoc/>
        public string GenerateSalt()
        {            
            return BCrypt.Net.BCrypt.GenerateSalt(10);
        }
    }
}
