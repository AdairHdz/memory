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
using System.Windows.Shapes;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para RecoverPassword.xaml
    /// </summary>
    public partial class RecoverPassword : Window
    {
        public RecoverPassword()
        {
            InitializeComponent();
        }

        private void TextBoxRecoverPassword_LostFocus(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(TextBoxRecoverPassword.Text))
            {
                TextBoxRecoverPassword.Visibility = System.Windows.Visibility.Collapsed;
                waterMarkText.Visibility = System.Windows.Visibility.Visible;
            }
        }

        private void waterMarkText_GotFocus(object sender, RoutedEventArgs e)
        {
            waterMarkText.Visibility = System.Windows.Visibility.Collapsed;
            TextBoxRecoverPassword.Visibility = System.Windows.Visibility.Visible;
            TextBoxRecoverPassword.Focus();
        }
    }
}
