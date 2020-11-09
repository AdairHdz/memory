using DataAccess.Models;
using DataAccess.Units_of_work;
using MemoryGame.Commands;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;


namespace MemoryGame.ViewModels
{
    public class LoginViewModel
    {
        public Player Player { get; set; }
        public ICommand LoginCommand { get; private set; }

        public bool CanUpdate
        {
            get
            {
                return true;
            }
        }

        public LoginViewModel()
        {
            Player = new Player();
            LoginCommand = new LoginCommand(this);
        }

        public void Login()
        {
            MemoryGameService.AccessibilityServiceClient client = new MemoryGameService.AccessibilityServiceClient();
            Console.WriteLine(client.HasAccessRights(Player.Username, "123"));
            //MemoryGameService.MemoryGameServiceClient client = new MemoryGameService.MemoryGameServiceClient();
            //Console.WriteLine(client.HasAccessRights(Player.Username, "123"));
            /*
            Player.Password = "123";
            Player.TotalScore = 0;
            Player.EmailWasVerified = false;            
            var unitOfWork = new UnitOfWork(new MemoryGameContext());
            unitOfWork.Players.Add(Player);            
            unitOfWork.Complete();
            */
        }

    }
}
