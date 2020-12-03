using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGameService.Services
{
    [GlobalErrorHandlerBehavior(typeof(GlobalErrorHandler))]
    public partial class MemoryGameService
    {
    }
}
