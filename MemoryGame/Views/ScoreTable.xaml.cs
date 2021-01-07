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
        private MemoryGameService.DataTransferObjects.PlayerScoreDTO[] _bestScores;
        private static readonly log4net.ILog _logger = log4net.LogManager.GetLogger("ScoreTable.xaml.cs");
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

