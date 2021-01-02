using System.Windows;
using DataAccess.Entities;
using System.Collections.ObjectModel;
using MemoryGame.MemoryGameService.DataTransferObjects;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para JoinGame.xaml
    /// </summary>
    public partial class JoinGame : Window
    {
        private MemoryGameService.MatchDiscoveryServiceClient _matchDiscoveryServiceClient = null;
        Sesion playerSesion = Sesion.GetSesion;
        public ObservableCollection<GameMatchDto> Matches = new ObservableCollection<GameMatchDto>();

        public JoinGame()
        {
            InitializeComponent();
            _matchDiscoveryServiceClient = new MemoryGameService.MatchDiscoveryServiceClient();
            Matches.AddRange(_matchDiscoveryServiceClient.GetActiveMatches());
            GamesDataGrid.ItemsSource = Matches;
        }
        private void BackButtonClicked(object sender, RoutedEventArgs e)
        {
            MainMenu mainMenuView = new MainMenu();
            mainMenuView.Show();
            this.Close();
        }
        
        private void JoinButtonClicked(object sender, RoutedEventArgs e)
        {
            GameMatchDto gameMatchDto = (GameMatchDto)GamesDataGrid.SelectedItem;
            string matchHost = gameMatchDto.Host;
            bool canJoinToGame = _matchDiscoveryServiceClient.CanJoin(matchHost);
            if (canJoinToGame)
            {
                WaitingRoom mainMenuView = new WaitingRoom()
                {
                    _gameMatchDto = gameMatchDto
                };
                mainMenuView.Show();
                this.Close();
            }
            else
            {
                MessageBox.Show(Properties.Langs.Resources.FullGameMessage);
            }
        }
    }
}
