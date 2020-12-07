using System.Windows;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para ScoreTable.xaml
    /// </summary>
    public partial class ScoreTable : Window
    {        
        public ScoreTable()
        {
            InitializeComponent();
            PopulateTableWithBestScores();
            
        }

        private MemoryGameService.DataTransferObjects.PlayerScoreDTO[] GetBestScores()
        {
            MemoryGameService.ScoreServiceClient client =
                new MemoryGameService.ScoreServiceClient();

            return client.GetPlayersWithBestScore(10);
        }


        private void PopulateTableWithBestScores()
        {
            MemoryGameService.DataTransferObjects.PlayerScoreDTO[] playerScoreDTOs;
            playerScoreDTOs = GetBestScores();
            for(int i = 0; i < playerScoreDTOs.Length; i++)
            {                
                var data = new PlayerScore
                {
                    Username = playerScoreDTOs[i].Username,
                    Score = playerScoreDTOs[i].TotalScore
                };
                ScoreDataGrid.Items.Add(data);
            }
        }

        private void BackButtonClicked(object sender, RoutedEventArgs e)
        {
            MainMenu mainMenuView = new MainMenu();
            mainMenuView.Show();
            this.Close();
        }
        class PlayerScore
        {
            public string Username { get; set; }
            public int Score { get; set; }
        }
    }



}

