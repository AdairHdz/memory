using System.Windows.Controls;

namespace MemoryGame.Components
{
    /// <summary>
    /// The <c>UserBox</c> class.
    /// This class contains the necessary information of the player
    /// to be drawn in the match view.
    /// </summary>
    public class UserBox : Grid
    {
        /// <summary>
        /// Sets the username of the player.
        /// </summary>
        /// <param name="username">The username of the player.</param>
        public void SetUsername(TextBlock username)
        {
            Grid.SetColumn(username, 0);
            Grid.SetRow(username, 0);
            this.Children.Add(username);
        }

    }
}
