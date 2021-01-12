using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Collections.Generic;
using DataAccess;
using DataAccess.Units_of_work;
using DataAccess.Entities;

namespace UnitTests
{
    [TestClass]
    public class CardDeckDeckDatabaseTest
    {
        [TestMethod]
        public void AddNewCardDeck_Success()
        {
            CardDeck CardDeck = new CardDeck()
            {
                Name = "SouthPark",
                BackImage = "pack://application:,,,/MemoryGameService;component/CardDeckDecks/1/image1.jpg",
                NumberOfPairs = 15
            };

            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            unitOfWork.CardDecks.Add(CardDeck);
            int expected = 1;
            int actual = unitOfWork.Complete();
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void AddNullCardDeck_DoesNotAffectDatabase()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            unitOfWork.CardDecks.Add(null);
            int expected = 0;
            int actual = unitOfWork.Complete();
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void AddRangeCardDecks_Success()
        {
            var newCardDecks = new List<CardDeck>()
            {
                new CardDeck
                {
                    Name = "Avengers",
                    BackImage = "pack://application:,,,/MemoryGameService;component/CardDeckDecks/1/image1.jpg",
                    NumberOfPairs = 31
                },
                new CardDeck
                {
                    Name = "JusticeLeage",
                    BackImage = "pack://application:,,,/MemoryGameService;component/CardDeckDecks/1/image1.jpg",
                    NumberOfPairs = 15
                }
            };
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            unitOfWork.CardDecks.AddRange(newCardDecks);
            int expected = 2;
            int actual = unitOfWork.Complete();
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void AddNullRangeCardDecks_DoesNotAffectDatabase()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            unitOfWork.CardDecks.AddRange(null);
            int expected = 0;
            int actual = unitOfWork.Complete();
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void GetAllCardDecks_Succes()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            var cardDecksRetrieved = unitOfWork.CardDecks.GetAll();
            unitOfWork.Complete();
            int expected = 4;
            int actual = 0;
            foreach (var cardDeck in cardDecksRetrieved)
            {
                actual++;
            }
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void FindFirstOccurrence_Success()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            CardDeck cardDeckRetrieved = unitOfWork.CardDecks.FindFirstOccurence(CardDeck => CardDeck.Name == "Avengers");
            unitOfWork.Complete();
            Assert.IsNotNull(cardDeckRetrieved);
        }

        [TestMethod]
        public void FindFirstOccurrence_ReturnsNullBecauseThereWereNoMatches()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            CardDeck cardDeckRetrieved = unitOfWork.CardDecks.FindFirstOccurence(CardDeck => CardDeck.Name == "McDonalds");
            unitOfWork.Complete();
            Assert.IsNull(cardDeckRetrieved);
        }

        [TestMethod]
        public void Find_Succes()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            var cardDecksRetrieved = unitOfWork.CardDecks.Find(p => p.NumberOfPairs == 15);
            unitOfWork.Complete();
            int expected = 2;
            int actual = 0;
            foreach (var CardDeck in cardDecksRetrieved)
            {
                actual++;
            }
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void Find_ReturnsEmptyList()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            var cardDecksRetrieved = unitOfWork.CardDecks.Find(p => p.NumberOfPairs > 31);
            unitOfWork.Complete();
            int expected = 0;
            int actual = 0;
            foreach (var cardDeck in cardDecksRetrieved)
            {
                actual++;
            }
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void Remove_Success()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            CardDeck cardDeckRetrieved = unitOfWork.CardDecks.FindFirstOccurence(p => p.Name == "Avengers");
            unitOfWork.Complete();
            Assert.IsNotNull(cardDeckRetrieved);

            unitOfWork.CardDecks.Remove(cardDeckRetrieved);
            int expected = 1;
            int actual = unitOfWork.Complete();
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void RemoveAll_Success()
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            var cardDecksRetrieved = unitOfWork.CardDecks.Find(p => p.NumberOfPairs == 15);
            unitOfWork.Complete();

            unitOfWork.CardDecks.RemoveRange(cardDecksRetrieved);
            int expected = 2;
            int actual = unitOfWork.Complete();
            Assert.AreEqual(expected, actual);
        }
    }
}
