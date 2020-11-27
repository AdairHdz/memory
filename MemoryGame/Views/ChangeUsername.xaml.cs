using DataAccess.Models;
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
    /// Lógica de interacción para ChangeUsername.xaml
    /// </summary>
    public partial class ChangeUsername : Window
    {
        private string _userEmailAddress;
        private string _newUsername;
        public ChangeUsername()
        {
            InitializeComponent();
            Sesion userSession = Sesion.GetSesion;
            _userEmailAddress = userSession.EmailAddress;      
            LabelOldUsername.Content = GetOldUsername();
        }

        private void TextBoxNewUsername_LostFocus(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(TextBoxNewUsername.Text))
            {
                TextBoxNewUsername.Visibility = System.Windows.Visibility.Collapsed;
                waterMarkText.Visibility = System.Windows.Visibility.Visible;
            }
        }

        private void waterMarkText_GotFocus(object sender, RoutedEventArgs e)
        {
            waterMarkText.Visibility = System.Windows.Visibility.Collapsed;
            TextBoxNewUsername.Visibility = System.Windows.Visibility.Visible;
            TextBoxNewUsername.Focus();
        }

        private string GetOldUsername()
        {            
            MemoryGameService.AccessibilityServiceClient accesibilityServiceClient =
                new MemoryGameService.AccessibilityServiceClient();
            return accesibilityServiceClient.GetUsername(_userEmailAddress);            
        }

        private void SaveChangesButtonClicked(object sender, RoutedEventArgs e)
        {
            
            _newUsername = TextBoxNewUsername.Text;
            if (UsernameIsValid())
            {
                if (UsernameIsAvailable())
                {
                    if (ChangeUserName())
                    {
                        MessageBox.Show("Nombre de usuario actualizado de forma exitosa");
                        GoToMainWindow();
                    }
                    else
                    {
                        MessageBox.Show("Ocurrió un error al registrar el nuevo nombre de usuario. Por favor, reintente más tarde.");
                    }
                    
                }
                else
                {
                    MessageBox.Show("El nombre de usuario elegido ya se encuentra ocupado por otro jugador. Favor de intentar con uno diferente");
                }
            }
            else
            {
                MessageBox.Show("Por favor asegúrese de lenar el campo e intente nuevamente");
            }
            
        }

        private bool UsernameIsAvailable()
        {
            MemoryGameService.AccessibilityServiceClient accessibilityServiceClient =
                new MemoryGameService.AccessibilityServiceClient();
            return accessibilityServiceClient.UserNameIsAvailable(_newUsername);
        }

        private bool UsernameIsValid()
        {             
            return _newUsername.Length > 0;            
        }

        private bool ChangeUserName()
        {            
            MemoryGameService.AccessibilityServiceClient accessibilityServiceClient =
                new MemoryGameService.AccessibilityServiceClient();
            return accessibilityServiceClient.ChangeUsername(_userEmailAddress, _newUsername);
        }

        private void GoToMainWindow()
        {
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
            this.Close();
        }
    }
}