﻿namespace DataAccess.Migrations
{
    using DataAccess.Entities;
    using System.Data.Entity.Migrations;

    internal sealed class Configuration : DbMigrationsConfiguration<DataAccess.MemoryGameContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
        }

        protected override void Seed(DataAccess.MemoryGameContext context)
        {
            context.Players.AddOrUpdate(x => x.EmailAddress,
                new Player()
                {
                    EmailAddress = "adrian1926@live.com.mx",
                    UserName = "VidrioCL",
                    Password = "b70727333785e024d197682944440dd6",
                    TotalScore = 100,
                    EmailWasVerified = false,
                    ActivationToken = "abcdef",
                    RecoveryToken = null
                },
                new Player()
                {
                    EmailAddress = "ben.ja20@hotmail.com",
                    UserName = "MultiP97",
                    Password = "b70727333785e024d197682944440dd6",
                    TotalScore = 35,
                    EmailWasVerified = false,
                    ActivationToken = "abcdef",
                    RecoveryToken = null
                },
                new Player()
                {
                    EmailAddress = "zS18012122@estudiantes.uv.mx",
                    UserName = "Navys230",
                    Password = "b70727333785e024d197682944440dd6",
                    TotalScore = 730,
                    EmailWasVerified = false,
                    ActivationToken = "abcdef",
                    RecoveryToken = null
                },
                new Player()
                {
                    EmailAddress = "prueba123@gmail.com",
                    UserName = "bataco_271",
                    Password = "b70727333785e024d197682944440dd6",
                    TotalScore = 192,
                    EmailWasVerified = false,
                    ActivationToken = "abcdef",
                    RecoveryToken = null
                }
            );

            context.CardDecks.AddOrUpdate(x => x.CardDeckId,
                new CardDeck()
                {
                    CardDeckId = 1,
                    Name = "Naruto Shippuden",
                    BackImage = "CardDecks/backimage.jpg",
                    NumberOfPairs = 11,
                }
            );

            context.Cards.AddOrUpdate(x => x.CardId,
                new Card()
                {
                    CardId = 1,
                    FrontImage = "CardDecks/1/image1.jpg",
                    CardDeckId = 1
                },
                new Card()
                {
                    CardId = 2,
                    FrontImage = "CardDecks/1/image2.jpg",
                    CardDeckId = 1
                },
                new Card()
                {
                    CardId = 3,
                    FrontImage = "CardDecks/1/image3.jpg",
                    CardDeckId = 1
                },
                new Card()
                {
                    CardId = 4,
                    FrontImage = "CardDecks/1/image4.jpg",
                    CardDeckId = 1
                },
                new Card()
                {
                    CardId = 5,
                    FrontImage = "CardDecks/1/image5.jpg",
                    CardDeckId = 1
                },
                new Card()
                {
                    CardId = 6,
                    FrontImage = "CardDecks/1/image6.jpg",
                    CardDeckId = 1
                },
                new Card()
                {
                    CardId = 7,
                    FrontImage = "CardDecks/1/image7.jpg",
                    CardDeckId = 1
                },
                new Card()
                {
                    CardId = 8,
                    FrontImage = "CardDecks/1/image8.jpg",
                    CardDeckId = 1
                },
                new Card()
                {
                    CardId = 9,
                    FrontImage = "CardDecks/1/image9.jpg",
                    CardDeckId = 1
                },
                new Card()
                {
                    CardId = 10,
                    FrontImage = "CardDecks/1/image10.jpg",
                    CardDeckId = 1
                },
                new Card()
                {
                    CardId = 11,
                    FrontImage = "CardDecks/1/image11.jpg",
                    CardDeckId = 1
                }
            ) ;

            //  This method will be called after migrating to the latest version.

            //  You can use the DbSet<T>.AddOrUpdate() helper extension method
            //  to avoid creating duplicate seed data.
        }
    }
}