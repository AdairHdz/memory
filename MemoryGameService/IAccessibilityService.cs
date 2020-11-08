using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGameService
{
    public interface IAccessibilityService
    {
        bool HasAccessRights(string username, string password);
    }
}
