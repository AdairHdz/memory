using System.Windows;

[assembly: log4net.Config.XmlConfigurator(Watch = true)]

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para App.xaml
    /// </summary>
    public partial class App : Application
    {
        private static readonly log4net.ILog _logger = log4net.LogManager.GetLogger("App.xaml.cs");
        protected override void OnStartup(StartupEventArgs e) { }
    }
}
