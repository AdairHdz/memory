using System.Windows;
using System.ServiceModel;
using System;

namespace MemoryGame
{
    /// <summary>
    /// Interaction logic for GameOptions.xaml
    /// </summary>
    public partial class GameOptions : Window
    {
        /// <summary>
        /// The Context of the current communication channel.
        /// </summary>        
        public InstanceContext Context { get; set; }

        /// <summary>
        /// The host of the current match.
        /// </summary>
        public string MatchHost { get; set; }

        /// <summary>
        /// The number of players in the current match.
        /// </summary>
        public int NumberOfPlayersInMatch { get; set; }

        /// <summary>
        /// The username of the player who opened the Expel Player window.
        /// </summary>
        public string PlayerUsername { get; set; }

        /// <summary>
        /// The <c>GameOptions</c> constructor.
        /// </summary>
        public GameOptions()
        {
            InitializeComponent();
        }

        private void WindowLoaded(object sender, EventArgs e)
        {            
            if (NumberOfPlayersInMatch < 3)
            {
                ExpelPlayerButton.Visibility = Visibility.Collapsed;
            }
        }

        private void LeaveGameButtonClicked(object sender, RoutedEventArgs e)
        {
            try
            {
                MemoryGameService.MatchServiceClient matchServiceClient = new MemoryGameService.MatchServiceClient(Context);
                matchServiceClient.LeaveMatch(MatchHost, PlayerUsername);
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show(Properties.Langs.Resources.ServerConnectionLost);
            }
            catch (TimeoutException)
            {
                MessageBox.Show(Properties.Langs.Resources.ServerTimeoutError);
            }
            catch (CommunicationException)
            {
                MessageBox.Show(Properties.Langs.Resources.CommunicationInterrupted);
            }
            finally
            {
                this.Close();
            }
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
