using System;
using System.Windows.Input;

namespace ViewModel.Commands
{
    public class PlayerRegisterCommand : ICommand
    {
        private RegisterViewModel _viewModel;
        public PlayerRegisterCommand(RegisterViewModel viewModel)
        {
            _viewModel = viewModel;
        }

        public event EventHandler CanExecuteChanged
        {
            add 
            { 
                CommandManager.RequerySuggested += value; 
            }
            remove 
            { 
                CommandManager.RequerySuggested -= value; 
            }
        }

        public bool CanExecute(object parameter)
        {
            return _viewModel.CanUpdate;
        }

        public void Execute(object parameter)
        {
            
        }
    }
}
