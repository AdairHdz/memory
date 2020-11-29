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
        private MemoryGameService.DataTransferObjects.PlayerScoreDTO[] _playersWithBestScores;
        public ScoreTable()
        {
            InitializeComponent();
            GetBestScores();
            PopulateTableWithBestScores();
        }

        private void GetBestScores()
        {
            MemoryGameService.ScoreServiceClient client =
                new MemoryGameService.ScoreServiceClient();

             _playersWithBestScores = client.GetPlayersWithBestScore(10);


        }

        private void PopulateTableWithBestScores()
        {
            ScoreDataGrid.DataContext = _playersWithBestScores;
            ScoreDataGrid.AutoGenerateColumns = false;

            /*
            for (int i = 0; i < _playersWithBestScores.Length; i++)
            {
                string username = _playersWithBestScores[i].Username;
                ScoreDataGrid.Items.Add(
                    _playersWithBestScores[i]
                );
            }
            */
        }

        
    }
}