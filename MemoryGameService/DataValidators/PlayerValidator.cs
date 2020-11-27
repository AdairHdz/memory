using DataAccess.Entities;
using FluentValidation;
using FluentValidation.Results;

namespace MemoryGameService.DataValidators
{
    public class PlayerValidator : AbstractValidator<DataAccess.Entities.Player>,
        IPlayerValidator
    {
        public PlayerValidator()
        {
            RuleFor(player => player.EmailAddress).Cascade(CascadeMode.Stop).Matches("[a-zA-Z]+[0-9]*@[a-z]+\\.[a-z]+\\.?[a-z]*");
            RuleFor(player => player.UserName).Cascade(CascadeMode.Stop).NotEmpty().MinimumLength(1);
            RuleFor(player => player.Password).Cascade(CascadeMode.Stop).MinimumLength(8).Matches("[a-zA-Z]+[0-9]+\\W+");
        }

        public bool Validate(string emailAddress, string username, string password)
        {
            Player playerToBeValidated = new Player()
            {
                EmailAddress = emailAddress,
                UserName = username,
                Password = password
            };
            ValidationResult validationResult = this.Validate(playerToBeValidated);
            return validationResult.IsValid;
        }
    }
}
