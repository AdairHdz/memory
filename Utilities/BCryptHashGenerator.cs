using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Utilities
{
    public class BCryptHashGenerator : IEncryption
    {
        public string GenerateEncryptedString(string stringToBeEncrypted)
        {
            string hashedPassword = BCrypt.Net.BCrypt.HashPassword(stringToBeEncrypted);
            return hashedPassword;
        }

        public bool Match(string normalString, string encryptedString)
        {
            bool isMatch = BCrypt.Net.BCrypt.Verify(normalString, encryptedString);
            return isMatch;
        }
    }
}
