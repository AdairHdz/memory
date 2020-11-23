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
            GetBestScores();
        }

        private void GetBestScores()
        {
            MemoryGameService.ScoreServiceClient client =
                new MemoryGameService.ScoreServiceClient();
            string[] names = client.GetPlayersWithBestScore(10);
            for(int i = 0; i < names.Length; i++)
            {
                
                Console.WriteLine("PUNTAJEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE" + names[i]);
            }
        }

        
    }
}