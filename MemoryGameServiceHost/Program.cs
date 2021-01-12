using System;
using System.ServiceModel;

namespace MemoryGameServiceHost
{
    public class Program
    {

        protected Program() { }

        static void Main()
        {
            using (ServiceHost host = new ServiceHost(typeof(MemoryGameService.Services.MemoryGameService)))
            {
                try
                {
                    host.Open();
                    Console.WriteLine("Server started @ " + DateTime.Now.ToString());
                    Console.ReadKey();
                }
                catch (AddressAlreadyInUseException)
                {
                    Console.WriteLine("Error while trying to start the server: " +
                        "Another instance of the server is already running.");
                }
                catch (AddressAccessDeniedException)
                {
                    Console.WriteLine("Error while trying to start the server: " +
                        "The access to the server address has been denied because you " +
                        "don't have the required privileges.");
                }
            }
        }
    }
}
