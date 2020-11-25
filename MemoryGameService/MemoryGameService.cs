using DataAccess.Context;
using DataAccess.Models;
using DataAccess.Units_of_work;
using MemoryGameService.DataValidators;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using Utilities;

namespace MemoryGameService
{
    [ServiceBehavior(ConcurrencyMode = ConcurrencyMode.Single,
        InstanceContextMode = InstanceContextMode.Single)]
    public class MemoryGameService : IMemoryGameService, 
        ICommunicationService, IAccessibilityService,
        IMailingService, ITokenGenerator, IDataValidationService,
        IScoreService
    {
        
        Dictionary<IChatClient, string> players = new Dictionary<IChatClient, string>();
        public string GetMessage()
        {
            throw new NotImplementedException();
        }
        public void SendMessage(string message)
        {
            var connection = OperationContext.Current.GetCallbackChannel<IChatClient>();
            string player;
            if (!players.TryGetValue(connection, out player))
            {
                return;
            }
            foreach (var other in players.Keys)
            {
                if (other == connection)
                {
                    continue;
                }
                other.ReciveMessage(player, message);
            }

        }
        public void Join(string username)
        {
            var connection = OperationContext.Current.GetCallbackChannel<IChatClient>();
            players[connection] = username;
        }

        public bool HasAccessRights(string username, string password)
        {
            var unitOfWork = new UnitOfWork(new MemoryGameContext());          
            var player = unitOfWork.Players.Find(x => x.Username == username && x.Password == password);
            int matches = player.Count();
            unitOfWork.Dispose();
            return matches == 1;
        }

        public bool IsVerified(string username)
        {
            var unitOfWork = new UnitOfWork(new MemoryGameContext());
            var player = unitOfWork.Players.Find(x => x.Username == username && x.EmailWasVerified == true);
            int matches = player.Count();
            unitOfWork.Dispose();
            return matches == 1;
        }

        public void GetActivePlayers()
        {            
            List<string> activePlayers = new List<string>();
            activePlayers.Add(DateTime.Now.ToString());
            OperationContext.Current.GetCallbackChannel<IMemoryGameCallback>().ShowActivePlayers(activePlayers);            
        }

        public bool RegisterNewPlayer(string emailAddress, string username, string password, string verificationToken)
        {
            
            var u = new UnitOfWork(new MemoryGameContext());
            var players = u.Players.GetAll();
            foreach(var player in players)
            {
                u.Players.Remove(player);
            }
            u.Complete();
            u.Dispose();
            
            Player newPlayer = new Player()
            {
                EmailAddress = emailAddress,
                Username = username,
                Password = password,
                TotalScore = 0,
                EmailWasVerified = false,
                VerificationToken = verificationToken

            };
            var unityOfWork = new UnitOfWork(new MemoryGameContext());
            unityOfWork.Players.Add(newPlayer);
            int playerWasRegistered = unityOfWork.Complete();
            unityOfWork.Dispose();
            return playerWasRegistered == 1;
        }

        public void SendVerificationToken(string name, string emailAddress, string verificationToken)
        {            
            MailTemplate mt = new MailTemplate();
            mt.SetReceiver(name, emailAddress);
            mt.SetMessage("Bienvenido", 
                "Tu token de verificación de cuenta es: " + verificationToken);
            mt.Send();
        }

        public string GenerateToken(int length)
        {
            string token = Guid.NewGuid().ToString();
            token = token.Replace("-", "");
            token = token.Substring(0, length);
            return token;
        }

        public bool EmailAddressIsAvailable(string emailAddress)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            var player = unitOfWork.Players.Get(emailAddress);
            unitOfWork.Dispose();
            return player == null;
        }

        public bool UserNameIsAvailable(string username)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            var player = unitOfWork.Players.Find(playerToFind => playerToFind.Username == username);            
            int playersWhichHaveThatUserName = player.Count();
            unitOfWork.Dispose();
            return playersWhichHaveThatUserName == 0;
        }

        public bool VerifyToken(string emailAddress, string verificationToken)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            var player = unitOfWork.Players.Find(playerToFind => playerToFind.EmailAddress == 
            emailAddress && playerToFind.VerificationToken == verificationToken);
            int matches = player.Count();
            unitOfWork.Dispose();
            return matches == 1;
        }

        public bool SetAccountAsVerified(string emailAddress)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            var player = unitOfWork.Players.Get(emailAddress);
            player.EmailWasVerified = true;
            int rowsModified = unitOfWork.Complete();
            unitOfWork.Dispose();
            return rowsModified == 1;
        }

        public bool AssignNewVerificationToken(string emailAddress, string verificationToken)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            var player = unitOfWork.Players.Get(emailAddress);
            player.VerificationToken = verificationToken;
            int rowsModified = unitOfWork.Complete();
            unitOfWork.Dispose();
            return rowsModified == 1;
        }

        public bool ValidateRegisterForm(string emailAddress, string username, string password)
        {
            PlayerValidator playerValidator = new PlayerValidator();
            bool isValidData = playerValidator.Validate(emailAddress, username, password);
            return isValidData;
        }

        public string[] GetPlayersWithBestScore(int numberOfPlayersToBeRetrieved)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            IEnumerable<Player> players = 
                unitOfWork.Players.GetPlayersWithBestScore(numberOfPlayersToBeRetrieved);
            string[] names = new string[numberOfPlayersToBeRetrieved];
            foreach(var player in players)
            {
                names.Append(player.Username);
            }
            return names;
        }

        public string GetUserEmailAddress(string username)
        {
            var unitOfWork = new UnitOfWork(new MemoryGameContext());
            var player = unitOfWork.Players.Find(x => x.Username == username);
            string emailAddress = player.ElementAt(0).EmailAddress;
            unitOfWork.Dispose();
            return emailAddress;
        }

        public string GetUsername(string emailAdress)
        {
            var unitOfWork = new UnitOfWork(new MemoryGameContext());
            var player = unitOfWork.Players.Get(emailAdress);
            string username = player.Username;
            unitOfWork.Dispose();
            return username;
        }

        public bool ItsRegistered(string emailAddress)
        {
            var unitOfWork = new UnitOfWork(new MemoryGameContext());
            var player = unitOfWork.Players.Find(x => x.EmailAddress == emailAddress);
            int matches = player.Count();
            unitOfWork.Dispose();
            return matches == 1;
        }

        public bool SetNewPassword(string emailAddress, string password)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            var player = unitOfWork.Players.Get(emailAddress);
            player.Password = password;
            int rowsModified = unitOfWork.Complete();
            unitOfWork.Dispose();
            return rowsModified == 1;
        }

        public bool ChangeUsername(string emailAddress, string newUsername)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            var player = unitOfWork.Players.Get(emailAddress);
            player.Username = newUsername;
            int rowsModified = unitOfWork.Complete();
            unitOfWork.Dispose();
            return rowsModified == 1;
        }
    }
}
