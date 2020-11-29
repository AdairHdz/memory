using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGameService.Contracts
{
    [ServiceContract]
    public interface IDataValidationService
    {
        [OperationContract]
        bool ValidateRegisterForm(string emailAddress, string username, string password);
    }
}
