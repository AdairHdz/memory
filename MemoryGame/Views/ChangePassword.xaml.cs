using DataAccess.Entities;
using System.Windows;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para ChangePassword.xaml
    /// </summary>
    public partial class ChangePassword : Window
    {
        private MemoryGameService.DataTransferObjects.PlayerCredentialsDTO _playerCredentialsDto;
        public ChangePassword()
        {
            InitializeComponent();
            Sesion sesion = Sesion.GetSesion;
            _playerCredentialsDto = new MemoryGameService.DataTransferObjects.PlayerCredentialsDTO()
            {
                EmailAddress = sesion.Username,
                Username = sesion.Username,
            };
        }

        
    }
}
