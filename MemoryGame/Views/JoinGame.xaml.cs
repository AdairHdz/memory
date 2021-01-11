﻿using System.Windows;
using System.Collections.ObjectModel;
using MemoryGame.MemoryGameService.DataTransferObjects;
using System.ServiceModel;
using System;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para JoinGame.xaml
    /// </summary>
    public partial class JoinGame : Window
    {
        private MemoryGameService.MatchDiscoveryServiceClient _matchDiscoveryServiceClient;        
        private MatchDto _selectedMatch;
        private static readonly log4net.ILog _logger = log4net.LogManager.GetLogger("JoinGame.xaml.cs");

        public JoinGame()
        {
            InitializeComponent();
            _matchDiscoveryServiceClient = new MemoryGameService.MatchDiscoveryServiceClient();
            LoadActiveMatches();                        
        }

        private void LoadActiveMatches()
        {
            try
            {
                PopulateTableWithActiveMatches();
            }
            catch (TimeoutException timeoutException)
            {
                _logger.Fatal(timeoutException);
                MessageBox.Show(Properties.Langs.Resources.ServerTimeoutError);
            }
            catch (EndpointNotFoundException endpointNotFoundException)
            {
                _logger.Fatal(endpointNotFoundException);
                MessageBox.Show(Properties.Langs.Resources.ServerConnectionLost);
            }
            catch (CommunicationException communicationException)
            {
                _logger.Fatal(communicationException);
                MessageBox.Show(Properties.Langs.Resources.CommunicationInterrupted);
            }
        }

        private void PopulateTableWithActiveMatches()
        {
            ObservableCollection<MatchDto> listOfActiveMatches = new ObservableCollection<MatchDto>();
            MatchDto[] activeMatches = _matchDiscoveryServiceClient.GetActiveMatches();

            for (int indexOfActualMatch = 0; indexOfActualMatch < activeMatches.Length; indexOfActualMatch++)
            {
                listOfActiveMatches.Add(activeMatches[indexOfActualMatch]);
            }

            GamesDataGrid.ItemsSource = listOfActiveMatches;
        }

        private void JoinButtonClicked(object sender, RoutedEventArgs e)
        {
            _selectedMatch = (MatchDto)GamesDataGrid.SelectedItem;
            try
            {
                JoinMatch();
            }
            catch (TimeoutException timeoutException)
            {
                _logger.Fatal(timeoutException);
                MessageBox.Show(Properties.Langs.Resources.ServerTimeoutError);
            }
            catch (EndpointNotFoundException endpointNotFoundException)
            {
                _logger.Fatal(endpointNotFoundException);
                MessageBox.Show(Properties.Langs.Resources.ServerConnectionLost);
            }
            catch (CommunicationException communicationException)
            {
                _logger.Fatal(communicationException);
                MessageBox.Show(Properties.Langs.Resources.CommunicationInterrupted);
            }
        }

        private void JoinMatch()
        {
            if (_selectedMatch == null)
            {
                MessageBox.Show(Properties.Langs.Resources.NoMatchWasSelected);
            }
            else
            {
                try
                {                    
                    if (PlayerCanJoinToGame())
                    {
                        GoToWaitingRoom();
                    }
                    else
                    {
                        MessageBox.Show(Properties.Langs.Resources.FullGameMessage);
                    }
                }
                catch (FaultException<MemoryGame.MemoryGameService.Faults.MatchAccessDeniedFault> matchAccessDeniedException)
                {
                    _logger.Fatal(matchAccessDeniedException);
                    MessageBox.Show(Properties.Langs.Resources.TriedToJoinToNonexistentMatch);
                }
                catch (TimeoutException timeoutException)
                {
                    _logger.Fatal(timeoutException);
                    MessageBox.Show(Properties.Langs.Resources.ServerTimeoutError);
                }
                catch (EndpointNotFoundException endpointNotFoundException)
                {
                    _logger.Fatal(endpointNotFoundException);
                    MessageBox.Show(Properties.Langs.Resources.ServerConnectionLost);
                }
                catch (CommunicationException communicationException)
                {
                    _logger.Fatal(communicationException);
                    MessageBox.Show(Properties.Langs.Resources.CommunicationInterrupted);
                }
            }
        }

        private bool PlayerCanJoinToGame()
        {
            string matchHost = _selectedMatch.Host;
            bool canJoinToGame = _matchDiscoveryServiceClient.CanJoin(matchHost);
            return canJoinToGame;
        }

        private void GoToWaitingRoom()
        {
            WaitingRoom waitingRoomView = new WaitingRoom()
            {
                GameMatchDto = _selectedMatch
            };
            waitingRoomView.Show();
            this.Close();
        }

        private void BackButtonClicked(object sender, RoutedEventArgs e)
        {
            MainMenu mainMenuView = new MainMenu();
            mainMenuView.Show();
            this.Close();
        }
    }
}
