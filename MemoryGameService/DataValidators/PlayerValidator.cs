using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccess.Models;
using FluentValidation;

namespace MemoryGameService.DataValidators
{
    public class Player : AbstractValidator<DataAccess.Models.Player>
    {
        public Player()
        {
            RuleFor(player => player.EmailAddress).Matches("[a-z]+[A-Z]*[0-9]*@[a-z]+\\.[a-z]+\\.?[a-z]*").WithMessage("");
            RuleFor(player => player.Username).Matches("[a-zA-Z0-9]+").WithMessage("");
            RuleFor(player => player.Password).MinimumLength(8).Matches("[a-z]+[A-Z]+[0-9]+\\W+").WithMessage("");
        }
    }
}
