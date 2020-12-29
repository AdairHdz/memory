﻿using System.Windows;
using DataAccess.Entities;
using System.Collections.ObjectModel;
using System;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para JoinGame.xaml
    /// </summary>
    public partial class CreateGame : Window
    {
        Sesion playerSesion = Sesion.GetSesion;
        public ObservableCollection<string> numberOfPlayers = new ObservableCollection<string>();
        public CreateGame()
        {
            InitializeComponent();
            numberOfPlayers.Add("1");
            numberOfPlayers.Add("2");
            numberOfPlayers.Add("3");
            numberOfPlayers.Add("4");
            ComboBoxNumberOfPlayers.ItemsSource = numberOfPlayers;
        }

        public void CreateGameButtonClicked(object sender, RoutedEventArgs e)
        {
            int numberOfPlayers = Int32.Parse(ComboBoxNumberOfPlayers.SelectedItem.ToString());
            MemoryGameService.DataTransferObjects.GameMatchConfigDto matchSettingsDto =
                new MemoryGameService.DataTransferObjects.GameMatchConfigDto()
                {
                    MaxNumberOfPlayers = numberOfPlayers,
                    Host = Sesion.GetSesion.Username,
                    HasStarted = false
                };
            WaitingRoom waitingRoomView = new WaitingRoom(){
                _gameMatchDto = matchSettingsDto
            };
            waitingRoomView.Show();
            this.Close();
        }

        public void BackButtonClicked(object sender, RoutedEventArgs e)
        {
            MainMenu mainMenuView = new MainMenu();
            mainMenuView.Show();
            this.Close();
        }
    }
}