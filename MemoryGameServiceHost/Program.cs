using System;
using System.ServiceModel;
using System.Threading;

namespace MemoryGameServiceHost
{
    public class Program
    {
        static void Main(string[] args)
        {
            using (ServiceHost host = new ServiceHost(typeof(MemoryGameService.Services.MemoryGameService)))
            {                
                host.Open();                
                Console.WriteLine("Server started @ " + DateTime.Now.ToString());                
                Console.ReadKey();                
            }
        }
    }
}
