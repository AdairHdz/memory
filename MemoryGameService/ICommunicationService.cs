using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGameService
{
    public interface ICommunicationService
    {
        void SendMessage(string message);
        string GetMessage();
    }
}
