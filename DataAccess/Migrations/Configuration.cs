using DataAccess.Entities;
using System.Data.Entity.Migrations;

namespace DataAccess.Migrations
{
    internal sealed class Configuration : DbMigrationsConfiguration<DataAccess.MemoryGameContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
        }

        protected override void Seed(DataAccess.MemoryGameContext context)
        {
            context.CardDecks.AddOrUpdate(x => x.CardDeckId,
                new CardDeck()
                {
                    CardDeckId = 1,
                    Name = "Naruto Shippuden",
                    BackImage = "pack://application:,,,/MemoryGameService;component/CardDecks/backimage.jpg",
                    NumberOfPairs = 11,
                }
            );

            context.Cards.AddOrUpdate(x => x.CardId,
                new Card()
                {
                    CardId = 1,
                    FrontImage = "pack://application:,,,/MemoryGameService;component/CardDecks/1/image1.jpg",
                    CardDeckId = 1
                },
                new Card()
                {
                    CardId = 2,
                    FrontImage = "pack://application:,,,/MemoryGameService;component/CardDecks/1/image2.jpg",
                    CardDeckId = 1
                },
                new Card()
                {
                    CardId = 3,
                    FrontImage = "pack://application:,,,/MemoryGameService;component/CardDecks/1/image3.jpg",
                    CardDeckId = 1
                },
                new Card()
                {
                    CardId = 4,
                    FrontImage = "pack://application:,,,/MemoryGameService;component/CardDecks/1/image4.jpg",
                    CardDeckId = 1
                },
                new Card()
                {
                    CardId = 5,
                    FrontImage = "pack://application:,,,/MemoryGameService;component/CardDecks/1/image5.jpg",
                    CardDeckId = 1
                },
                new Card()
                {
                    CardId = 6,
                    FrontImage = "pack://application:,,,/MemoryGameService;component/CardDecks/1/image6.jpg",
                    CardDeckId = 1
                },
                new Card()
                {
                    CardId = 7,
                    FrontImage = "pack://application:,,,/MemoryGameService;component/CardDecks/1/image7.jpg",
                    CardDeckId = 1
                },
                new Card()
                {
                    CardId = 8,
                    FrontImage = "pack://application:,,,/MemoryGameService;component/CardDecks/1/image8.jpg",
                    CardDeckId = 1
                },
                new Card()
                {
                    CardId = 9,
                    FrontImage = "pack://application:,,,/MemoryGameService;component/CardDecks/1/image9.jpg",
                    CardDeckId = 1
                },
                new Card()
                {
                    CardId = 10,
                    FrontImage = "pack://application:,,,/MemoryGameService;component/CardDecks/1/image10.jpg",
                    CardDeckId = 1
                },
                new Card()
                {
                    CardId = 11,
                    FrontImage = "pack://application:,,,/MemoryGameService;component/CardDecks/1/image11.jpg",
                    CardDeckId = 1
                }
            ) ;
        }
    }
}
