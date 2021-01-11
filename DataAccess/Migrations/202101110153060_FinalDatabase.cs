namespace DataAccess.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class FinalDatabase : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Accounts",
                c => new
                    {
                        EmailAddress = c.String(nullable: false, maxLength: 128),
                        Username = c.String(nullable: false),
                        Password = c.String(nullable: false, maxLength: 254),
                        Salt = c.String(maxLength: 254),
                        EmailWasVerified = c.Boolean(nullable: false),
                        ActivationToken = c.String(maxLength: 50),
                        RecoveryToken = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.EmailAddress)
                .ForeignKey("dbo.Players", t => t.EmailAddress)
                .Index(t => t.EmailAddress);
            
            CreateTable(
                "dbo.Players",
                c => new
                    {
                        EmailAddress = c.String(nullable: false, maxLength: 128),
                        Score = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.EmailAddress);
            
            CreateTable(
                "dbo.CardDecks",
                c => new
                    {
                        CardDeckId = c.Int(nullable: false, identity: true),
                        Name = c.String(nullable: false, maxLength: 100),
                        BackImage = c.String(nullable: false),
                        NumberOfPairs = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.CardDeckId);
            
            CreateTable(
                "dbo.Cards",
                c => new
                    {
                        CardId = c.Int(nullable: false, identity: true),
                        CardDeckId = c.Int(nullable: false),
                        FrontImage = c.String(nullable: false),
                    })
                .PrimaryKey(t => t.CardId)
                .ForeignKey("dbo.CardDecks", t => t.CardDeckId, cascadeDelete: true)
                .Index(t => t.CardDeckId);
            
            CreateTable(
                "dbo.Matches",
                c => new
                    {
                        MatchId = c.Int(nullable: false, identity: true),
                        Date = c.DateTime(nullable: false),
                        CardDeckId = c.Int(nullable: false),
                        EmailAddress = c.String(maxLength: 128),
                    })
                .PrimaryKey(t => t.MatchId)
                .ForeignKey("dbo.CardDecks", t => t.CardDeckId, cascadeDelete: true)
                .ForeignKey("dbo.Players", t => t.EmailAddress)
                .Index(t => t.CardDeckId)
                .Index(t => t.EmailAddress);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Matches", "EmailAddress", "dbo.Players");
            DropForeignKey("dbo.Matches", "CardDeckId", "dbo.CardDecks");
            DropForeignKey("dbo.Cards", "CardDeckId", "dbo.CardDecks");
            DropForeignKey("dbo.Accounts", "EmailAddress", "dbo.Players");
            DropIndex("dbo.Matches", new[] { "EmailAddress" });
            DropIndex("dbo.Matches", new[] { "CardDeckId" });
            DropIndex("dbo.Cards", new[] { "CardDeckId" });
            DropIndex("dbo.Accounts", new[] { "EmailAddress" });
            DropTable("dbo.Matches");
            DropTable("dbo.Cards");
            DropTable("dbo.CardDecks");
            DropTable("dbo.Players");
            DropTable("dbo.Accounts");
        }
    }
}
