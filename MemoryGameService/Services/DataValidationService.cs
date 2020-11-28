using MemoryGameService.Contracts;
using MemoryGameService.DataValidators;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGameService.Services
{
    public partial class MemoryGameService : IDataValidationService
    {
        public bool ValidateRegisterForm(string emailAddress, string username, string password)
        {
            PlayerValidator playerValidator = new PlayerValidator();
            bool isValidData = playerValidator.Validate(emailAddress, username, password);
            return isValidData;
        }
    }
}
