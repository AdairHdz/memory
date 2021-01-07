using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;

namespace MemoryGame.Components
{
    public class UserBoxDrawer
    {
        public Grid GridToBeDrawnOn;
        public string[] PlayersUsernames;        

        public void Draw()
        {
            int rowIndex = 0;
            int columnIndex = 0;

            foreach (var player in PlayersUsernames)
            {
                UserBox userBox = new UserBox()
                {
                    Background = new SolidColorBrush(Color.FromRgb(239, 71, 111))
                };
                
                TextBlock username = new TextBlock()
                {
                    Text = player,
                    Foreground = new SolidColorBrush(Color.FromRgb(255, 255, 255)),
                    VerticalAlignment = VerticalAlignment.Center,
                    HorizontalAlignment = HorizontalAlignment.Center,
                    FontSize = 20,
                    TextTrimming = TextTrimming.CharacterEllipsis
                };

                userBox.SetUsername(username);

                Grid.SetColumn(userBox, rowIndex);
                Grid.SetRow(userBox, columnIndex);
                GridToBeDrawnOn.Children.Add(userBox);
                if (columnIndex == 8)
                {
                    rowIndex = 8;
                    columnIndex = 0;
                }
                else
                {
                    columnIndex = 8;
                }
            }
        }
    }

}
