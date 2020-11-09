using DataAccess.Context;
using DataAccess.Models;
using DataAccess.Units_of_work;
using MemoryGame.Commands;
using MemoryGameService;

using System;
using System.Runtime.InteropServices;
using System.Windows.Input;


namespace MemoryGame.ViewModels
{
    public class RegisterViewModel
    {        
        public Player Player { get; set; }
        public ICommand RegisterCommand { get; private set; }
        public bool CanUpdate
        {
            get
            {
                return true;
            }                        
        }

        public RegisterViewModel()
        {
            Player = new Player();
            RegisterCommand = new PlayerRegisterCommand(this);
        }

        public void SavePlayer()
        {
            
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
