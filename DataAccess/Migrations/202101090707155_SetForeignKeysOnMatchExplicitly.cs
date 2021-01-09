namespace DataAccess.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class SetForeignKeysOnMatchExplicitly : DbMigration
    {
        public override void Up()
        {
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
                        CardDeckId = c.Int(nullable: false),
                        EmailAddress = c.String(maxLength: 254),
                    })
                .PrimaryKey(t => t.MatchId)
                .ForeignKey("dbo.CardDecks", t => t.CardDeckId, cascadeDelete: true)
                .ForeignKey("dbo.Players", t => t.EmailAddress)
                .Index(t => t.CardDeckId)
                .Index(t => t.EmailAddress);
            
            CreateTable(
                "dbo.Players",
                c => new
                    {
                        EmailAddress = c.String(nullable: false, maxLength: 254),
                        Score = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.EmailAddress)
                .ForeignKey("dbo.Accounts", t => t.EmailAddress)
                .Index(t => t.EmailAddress);
            
            CreateTable(
                "dbo.Accounts",
                c => new
                    {
                        EmailAddress = c.String(nullable: false, maxLength: 254),
                        Username = c.String(nullable: false),
                        Password = c.String(nullable: false, maxLength: 254),
                        Salt = c.String(maxLength: 254),
                        EmailWasVerified = c.Boolean(nullable: false),
                        ActivationToken = c.String(maxLength: 50),
                        RecoveryToken = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.EmailAddress);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Matches", "EmailAddress", "dbo.Players");
            DropForeignKey("dbo.Players", "EmailAddress", "dbo.Accounts");
            DropForeignKey("dbo.Matches", "CardDeckId", "dbo.CardDecks");
            DropForeignKey("dbo.Cards", "CardDeckId", "dbo.CardDecks");
            DropIndex("dbo.Players", new[] { "EmailAddress" });
            DropIndex("dbo.Matches", new[] { "EmailAddress" });
            DropIndex("dbo.Matches", new[] { "CardDeckId" });
            DropIndex("dbo.Cards", new[] { "CardDeckId" });
            DropTable("dbo.Accounts");
            DropTable("dbo.Players");
            DropTable("dbo.Matches");
            DropTable("dbo.Cards");
            DropTable("dbo.CardDecks");
        }
    }
}
