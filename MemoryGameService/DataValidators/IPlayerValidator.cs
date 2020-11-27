using DataAccess.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGameService.DataValidators
{
    public interface IPlayerValidator
    {
        bool Validate(string emailAddress, string username, string password);
    }
}
