using System.Windows;
using System.ServiceModel;
using System.Collections.Generic;
using System.Collections.ObjectModel;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para ExpelPlayer.xaml
    /// </summary>
    public partial class ExpelPlayer : Window
    {
        public InstanceContext Context { get; set; }
        private MemoryGameService.MatchServiceClient _matchServiceClient;
        public ObservableCollection<string> players = new ObservableCollection<string>();
        public string MatchHost { get; set; }
        public int NumberOfPlayersInMatch { get; set; }
        public string PlayerUsername { get; set; }
        public ExpelPlayer()
        {
            InitializeComponent();
        }

        private void WindowLoaded(object sender, RoutedEventArgs e)
        {
            _matchServiceClient = new MemoryGameService.MatchServiceClient(Context);
            IList<string> playersInMatchUsernames = _matchServiceClient.GetUsernamesOfPlayersConnectedToMatch(MatchHost);
            IList<string> playersVoted = _matchServiceClient.GetPlayersVoted(MatchHost, PlayerUsername);
            foreach (var playerUsername in playersInMatchUsernames)
            {
                if(playerUsername != PlayerUsername)
                {
                    players.Add(playerUsername);
                }               
            }
            if (playersVoted.Count != 0)
            {
                for (int index = 0; index < playersInMatchUsernames.Count; index++)
                {
                    for (int playersVotedIndex = 0; playersVotedIndex < playersVoted.Count; playersVotedIndex++)
                    {
                        if (playersInMatchUsernames[index].Equals(playersVoted[playersVotedIndex]))
                        {
                            players.Remove(playersVoted[playersVotedIndex]);
                        }
                    }
                }
            }           
            ExpelPlayerDataGrid.ItemsSource = players;
        }

        private void ExpelPlayerButtonClicked(object sender, RoutedEventArgs e)
        {
            string selectedPlayer = ExpelPlayerDataGrid.SelectedItem.ToString();
            _matchServiceClient.ExpelPlayer(MatchHost, selectedPlayer, PlayerUsername);
            this.Close();
        }

        private void BackButtonClicked(object sender, RoutedEventArgs e)
        {
            GameOptions gameOptionsView = new GameOptions()
            {
                MatchHost = this.MatchHost,
                NumberOfPlayersInMatch = this.NumberOfPlayersInMatch,
                PlayerUsername = this.PlayerUsername,
                Context = this.Context
            };
            gameOptionsView.Show();
            this.Close();
        }
    }
}
