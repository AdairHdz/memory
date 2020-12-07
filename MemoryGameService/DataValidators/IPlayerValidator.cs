namespace MemoryGameService.DataValidators
{
    public interface IPlayerValidator
    {
        bool Validate(string emailAddress, string username, string password);
    }
}
