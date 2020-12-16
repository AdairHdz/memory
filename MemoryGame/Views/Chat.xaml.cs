using System.Windows;
using System.Windows.Input;
using System.ServiceModel;
using DataAccess.Entities;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para Chat.xaml
    /// </summary>
    public partial class Chat : Window, Proxy.ICommunicationServiceCallback
    {
        private Proxy.CommunicationServiceClient server = null;
        private InstanceContext context = null;
        Sesion playerSesion = Sesion.GetSesion;
        public Chat()
        {
            InitializeComponent();
            context = new InstanceContext(this);
            server = new Proxy.CommunicationServiceClient(context);
            server.Join(playerSesion.Username);

        }

        public void ReciveMessage(string username, string message)
        {
            string format = "\n" + username + ": " + message;
            ChatBox.AppendText(format);
            ChatBox.ScrollToEnd();
        }

        private void SendMessageClickedButton(object sender, RoutedEventArgs e)
        {
            string message = TextBoxMessageContent.Text;
            if (!string.IsNullOrEmpty(message))
            {
                server.SendMessage(message);
            }

            string format = "\n" + playerSesion.Username + ": " + message;
            ChatBox.AppendText(format);
            ChatBox.ScrollToEnd();
            TextBoxMessageContent.Clear();
        }

        private void EnterKeyPressed (object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                SendMessageClickedButton(this, new RoutedEventArgs());
            }
        }
    }
}
