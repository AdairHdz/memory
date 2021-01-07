using System.Windows;
using System.Windows.Input;
using System.ServiceModel;
using DataAccess.Entities;
using System;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para Chat.xaml
    /// </summary>
    public partial class Chat : Window, MemoryGameService.ICommunicationServiceCallback
    {
        private MemoryGameService.CommunicationServiceClient server = null;
        private InstanceContext context = null;
        Sesion playerSesion = Sesion.GetSesion;
        public Chat()
        {
            InitializeComponent();
            context = new InstanceContext(this);
            server = new MemoryGameService.CommunicationServiceClient(context);
            server.SubscribeToCommunicationService("dummie");

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
                server.SendMessage(playerSesion.Username, message);
            }
            TextBoxMessageContent.Clear();
        }

        private void EnterKeyPressed (object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                SendMessageClickedButton(this, new RoutedEventArgs());
            }
        }

        public void NotifyUserHasEnteredTheChat(string username)
        {
            string format = "\n" + username + " entró al chat";
            //ChatBox.AppendText(format);
            //ChatBox.ScrollToEnd();
            Console.WriteLine(format);
        }
    }
}
