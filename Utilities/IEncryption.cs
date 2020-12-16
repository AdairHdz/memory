using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Utilities
{
    public interface IEncryption
    {
        string GenerateEncryptedString(string stringToBeEncrypted);
        bool Match(string normalString, string encryptedString);
    }
}
