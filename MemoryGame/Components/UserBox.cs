using System.Windows.Controls;

namespace MemoryGame.Components
{
    public class UserBox : Grid
    {
        public TextBlock Username { get; set; }
        public void SetUsername(TextBlock username)
        {
            Grid.SetColumn(username, 0);
            Grid.SetRow(username, 0);
            this.Children.Add(username);
        }

    }
}
