using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

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
                PlayerScore playerScore = new PlayerScore();
                var data = new PlayerScore
                {
                    Username = playerScoreDTOs[i].Username,
                    Score = playerScoreDTOs[i].TotalScore
                };
                ScoreDataGrid.Items.Add(data);
            }
        }

        class PlayerScore
        {
            public string Username { get; set; }
            public int Score { get; set; }
        }
    }



}

