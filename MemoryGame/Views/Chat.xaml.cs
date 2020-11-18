using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.ServiceModel;
using DataAccess.Models;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para Chat.xaml
    /// </summary>
    public partial class Chat : Window //Proxy.ICommunicationServiceCallback
    {
       /* private Proxy.CommunicationServiceClient server = null;
        private InstanceContext context = null;
        Sesion playerSesion = Sesion.getSesionData;
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

            string format = "\nTu: " + message;
            ChatBox.AppendText(format);
            ChatBox.ScrollToEnd();
            TextBoxMessageContent.Clear();
        }

        /*private void EnterKeyPressed (object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                SendMessageClickedButton(this, new RoutedEventArgs());
            }
        }*/
    }
}
