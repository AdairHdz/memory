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
using System.Windows.Shapes;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para RecoverPassword.xaml
    /// </summary>
    public partial class MainMenu : Window
    {
        public MainMenu()
        {
            InitializeComponent();
        }

        private void CreateGameButtonClicked(object sender, RoutedEventArgs e)
        {
            CreateGame settingsView = new CreateGame();
            settingsView.Show();
            this.Close();
        }

        private void JoinGameButtonClicked(object sender, RoutedEventArgs e)
        {
            JoinGame settingsView = new JoinGame();
            settingsView.Show();
            this.Close();
        }

        private void ScoreTableButtonClicked(object sender, RoutedEventArgs e)
        {
            RecoverPassword settingsView = new RecoverPassword();
            settingsView.Show();
            this.Close();
        }
    }
}
