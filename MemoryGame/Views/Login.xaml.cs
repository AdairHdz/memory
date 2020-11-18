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
using Utilities;
using DataAccess.Models;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para Login.xaml
    /// </summary>
    public partial class Login : Window
    {
        public Login()
        {
            InitializeComponent();          
        }        

        public bool LoginIsValid()
        {
            MemoryGameService.AccessibilityServiceClient client = 
                new MemoryGameService.AccessibilityServiceClient();

            string encryptedPassword = MD5Encryption.Encrypt(PasswordBoxPassword.Password);
            string username = TextBoxUsername.Text;

            return client.HasAccessRights(username, encryptedPassword);
        }



        public void GoToMainMenu()
        {
            MainMenu mainMenuView = new MainMenu();
            mainMenuView.Show();
            this.Close();
        }

        private void LoginButtonClicked(object sender, RoutedEventArgs e)
        {
            if (LoginIsValid())
            {
                Sesion playerSesion = Sesion.getSesion;
                playerSesion.Username = TextBoxUsername.Text;
                GoToMainMenu();
            }
            else
            {
                MessageBox.Show("No existe el usuario (a esto hay que volverlo un resource)");
            }
        }
    }
}