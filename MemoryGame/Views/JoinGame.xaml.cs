using System.Windows;
using System.ServiceModel;
using DataAccess.Entities;
using System.Collections.ObjectModel;
using MemoryGame.MemoryGameService;
using MemoryGame.MemoryGameService.DataTransferObjects;
using System;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para JoinGame.xaml
    /// </summary>
    public partial class JoinGame : Window
    {
        private MemoryGameService.MatchDiscoveryServiceClient _matchDiscoveryServiceClient = null;
        Sesion playerSesion = Sesion.GetSesion;
        public ObservableCollection<GameMatchConfigDto> Matches = new ObservableCollection<GameMatchConfigDto>();

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
            GameMatchConfigDto gameMatchDto = (GameMatchConfigDto)GamesDataGrid.SelectedItem;
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
