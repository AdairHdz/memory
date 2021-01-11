using System.Windows;
using System.ServiceModel;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System;
using MemoryGame.MemoryGameService.DataTransferObjects;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para ExpelPlayer.xaml
    /// </summary>
    public partial class ExpelPlayer : Window
    {
        public InstanceContext Context { get; set; }
        private MemoryGameService.MatchServiceClient _matchServiceClient;
        public ObservableCollection<string> players { get; set; } = new ObservableCollection<string>();
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
            try
            {
                LoadUsernamesToBeVoted();
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
        }

        private void LoadUsernamesToBeVoted()
        {
            IList<string> playersInMatchUsernames = _matchServiceClient.GetUsernamesOfPlayersConnectedToMatch(MatchHost);
            IList<string> playersVoted = _matchServiceClient.GetPlayersVoted(MatchHost, PlayerUsername);
            foreach (var playerUsername in playersInMatchUsernames)
            {
                if (playerUsername != PlayerUsername)
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
            try
            {
                VoteToExpelPlayer();
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

        private void VoteToExpelPlayer()
        {
            var selectedPlayer = ExpelPlayerDataGrid.SelectedItem;
            if(selectedPlayer != null)
            {
                string usernameOfSelectedPlayer = selectedPlayer.ToString();
                ExpelVoteDto expelVote = new ExpelVoteDto()
                {
                    Host = MatchHost,
                    UsernameOfExpelPlayer = usernameOfSelectedPlayer,
                    UsernameOfVoterPlayer = PlayerUsername
                };
                _matchServiceClient.ExpelPlayer(expelVote);
            }
            else
            {
                MessageBox.Show(Properties.Langs.Resources.SelectPlayerToBeExpeled);
            }

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
