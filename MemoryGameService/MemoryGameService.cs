﻿using DataAccess.Context;
using DataAccess.Models;
using DataAccess.Units_of_work;
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
    public class MemoryGameService : IMemoryGameService, 
        ICommunicationService, IAccessibilityService,
        IMailingService, ITokenGenerator
    {
        public string GetMessage()
        {
            throw new NotImplementedException();
        }

        public bool HasAccessRights(string username, string password)
        {
            var unitOfWork = new UnitOfWork(new MemoryGameContext());          
            var player = unitOfWork.Players.Find(x => x.Username == username && x.Password == password);
            return player.Count() == 1;
        }

        public void SendMessage(string message)
        {
            throw new NotImplementedException();
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
                Console.WriteLine(player.VerificationToken);
            }
            /*
            Player newPlayer = new Player();
            newPlayer.EmailAddress = emailAddress;
            newPlayer.Username = username;
            newPlayer.Password = password;
            newPlayer.TotalScore = 0;
            newPlayer.EmailWasVerified = false;
            newPlayer.VerificationToken = verificationToken;
            var unityOfWork = new UnitOfWork(new MemoryGameContext());
            unityOfWork.Players.Add(newPlayer);
            return unityOfWork.Complete() == 1;            
            */
            return true;
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
    }
}
