using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ServiceModel;

namespace MemoryGameServiceHost
{
    public class Program
    {
        static void Main(string[] args)
        {
            using(ServiceHost host = new ServiceHost(typeof(MemoryGameService.MemoryGameService)))
            {                
                host.Open();                
                Console.WriteLine("Server started @ " + DateTime.Now.ToString());
                Console.ReadKey();                
            }
        }
    }
}
