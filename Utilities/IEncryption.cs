namespace Utilities
{
    public interface IEncryption
    {
        string GenerateEncryptedString(string stringToBeEncrypted, string salt);
        bool Match(string normalString, string encryptedString);
        string GenerateSalt();
    }
}
