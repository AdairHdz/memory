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
    public partial class JoinGame : Window, IMatchDiscoveryServiceCallback
    {
        private MemoryGameService.MatchDiscoveryServiceClient _matchDiscoveryServiceClient = null;
        private InstanceContext context = null;
        Sesion playerSesion = Sesion.GetSesion;
        public ObservableCollection<GameMatchConfigDto> Matches = new ObservableCollection<GameMatchConfigDto>();


        public JoinGame()
        {
            InitializeComponent();
            context = new InstanceContext(this);
            _matchDiscoveryServiceClient = new MemoryGameService.MatchDiscoveryServiceClient(context);
            _matchDiscoveryServiceClient.DiscoverActiveMatches();
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
            MessageBox.Show(gameMatchDto.Host);
            bool canJoinToGame = _matchDiscoveryServiceClient.CanJoin(gameMatchDto);
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

        public void ShowActiveMatches(GameMatchConfigDto[] matches)
        {
            for(int i = 0; i < matches.Length; i++)
            {
                Matches.Add(matches[i]);
            }
        }
    }
}
