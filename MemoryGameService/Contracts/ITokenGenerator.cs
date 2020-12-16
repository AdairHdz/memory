using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    [ServiceContract]
    public interface ITokenGenerator
    {
        [OperationContract]
        string GenerateToken(int length);
    }
}
