using System;
using System.ServiceModel;
using System.Windows;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para ScoreTable.xaml
    /// </summary>
    public partial class ScoreTable : Window
    {
        private MemoryGameService.DataTransferObjects.PlayerScoreDto[] _bestScores;
        /// <summary>
        /// The <c>ScoreTable</c> constructor.
        /// </summary>
        public ScoreTable()
        {
            InitializeComponent();
            PopulateTableWithBestScores();
        }

        private void PopulateTableWithBestScores()
        {
            try
            {
                LoadBestScores();
                for(int indexOfActualPlayer = 0; indexOfActualPlayer < _bestScores.Length; indexOfActualPlayer++)
                {
                    if(_bestScores[indexOfActualPlayer] != null)
                    {
                        ScoreDataGrid.Items.Add(_bestScores[indexOfActualPlayer]);
                    }                    
                }                
            }
            catch (TimeoutException)
            {
                MessageBox.Show(Properties.Langs.Resources.ServerTimeoutError);
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show(Properties.Langs.Resources.ServerConnectionLost);
            }
            catch (CommunicationException)
            {
                MessageBox.Show(Properties.Langs.Resources.CommunicationInterrupted);
            }
        }

        private void LoadBestScores()
        {
            MemoryGameService.ScoreServiceClient client = new MemoryGameService.ScoreServiceClient();
            _bestScores = client.GetPlayersWithBestScore(10);
        }

        private void BackButtonClicked(object sender, RoutedEventArgs e)
        {
            MainMenu mainMenuView = new MainMenu();
            mainMenuView.Show();
            this.Close();
        }
    }



}

