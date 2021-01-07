using System.Windows;
using System.ServiceModel;
using System;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para GameOptions.xaml
    /// </summary>
    public partial class GameOptions : Window
    {
        public InstanceContext Context { get; set; }
        private MemoryGameService.MatchServiceClient _matchServiceClient;
        public string MatchHost { get; set; }
        public int NumberOfPlayersInMatch { get; set; }
        public string PlayerUsername { get; set; }

        public GameOptions()
        {
            InitializeComponent();
        }

        private void WindowLoaded(object sender, EventArgs e)
        {
            _matchServiceClient = new MemoryGameService.MatchServiceClient(Context);
            if (NumberOfPlayersInMatch < 3)
            {
                ExpelPlayerButton.Visibility = System.Windows.Visibility.Collapsed;
            }
        }

        private void LeaveGameButtonClicked(object sender, RoutedEventArgs e)
        {
            _matchServiceClient.LeaveMatch(MatchHost, PlayerUsername);
            this.Close();
        }

        private void ExpelPlayerButtonClicked(object sender, RoutedEventArgs e)
        {
            ExpelPlayer expelPlayerView = new ExpelPlayer()
            {
                MatchHost = this.MatchHost,
                NumberOfPlayersInMatch = this.NumberOfPlayersInMatch,
                PlayerUsername = this.PlayerUsername,
                Context = this.Context
            };
            expelPlayerView.Show();
            this.Close();
        }

        private void BackButtonClicked(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
