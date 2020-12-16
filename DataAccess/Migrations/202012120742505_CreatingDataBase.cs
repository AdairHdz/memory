namespace DataAccess.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class CreatingDataBase : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.CardDecks",
                c => new
                    {
                        CardDeckId = c.Int(nullable: false),
                        ThematicId = c.Int(nullable: false),
                        Name = c.String(nullable: false, maxLength: 100),
                        BackImage = c.String(nullable: false),
                        NumberOfPairs = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.CardDeckId);
            
            CreateTable(
                "dbo.Cards",
                c => new
                    {
                        CardId = c.Int(nullable: false),
                        CardDeckId = c.Int(nullable: false),
                        FrontImage = c.String(nullable: false),
                    })
                .PrimaryKey(t => t.CardId)
                .ForeignKey("dbo.CardDecks", t => t.CardDeckId)
                .Index(t => t.CardDeckId);
            
            CreateTable(
                "dbo.Matches",
                c => new
                    {
                        MatchId = c.Int(nullable: false),
                        StatusId = c.Int(nullable: false),
                        CardDeckId = c.Int(nullable: false),
                        Duration = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.MatchId)
                .ForeignKey("dbo.CardDecks", t => t.CardDeckId)
                .Index(t => t.CardDeckId);
            
            CreateTable(
                "dbo.Players",
                c => new
                    {
                        EmailAddress = c.String(nullable: false, maxLength: 254),
                        UserName = c.String(nullable: false),
                        Password = c.String(nullable: false),
                        TotalScore = c.Int(nullable: false),
                        EmailWasVerified = c.Boolean(nullable: false),
                        ActivationToken = c.String(maxLength: 50),
                        RecoveryToken = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.EmailAddress);
            
            CreateTable(
                "dbo.Winners",
                c => new
                    {
                        EmailAddress = c.String(nullable: false, maxLength: 254),
                        MatchId = c.Int(nullable: false),
                        Score = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.EmailAddress, t.MatchId })
                .ForeignKey("dbo.Players", t => t.EmailAddress)
                .ForeignKey("dbo.Matches", t => t.MatchId)
                .Index(t => t.EmailAddress)
                .Index(t => t.MatchId);
            
            CreateTable(
                "dbo.MatchesPlayed",
                c => new
                    {
                        EmailAddress = c.String(nullable: false, maxLength: 254),
                        MatchId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.EmailAddress, t.MatchId })
                .ForeignKey("dbo.Players", t => t.EmailAddress, cascadeDelete: true)
                .ForeignKey("dbo.Matches", t => t.MatchId, cascadeDelete: true)
                .Index(t => t.EmailAddress)
                .Index(t => t.MatchId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Matches", "CardDeckId", "dbo.CardDecks");
            DropForeignKey("dbo.Winners", "MatchId", "dbo.Matches");
            DropForeignKey("dbo.Winners", "EmailAddress", "dbo.Players");
            DropForeignKey("dbo.MatchesPlayed", "MatchId", "dbo.Matches");
            DropForeignKey("dbo.MatchesPlayed", "EmailAddress", "dbo.Players");
            DropForeignKey("dbo.Cards", "CardDeckId", "dbo.CardDecks");
            DropIndex("dbo.MatchesPlayed", new[] { "MatchId" });
            DropIndex("dbo.MatchesPlayed", new[] { "EmailAddress" });
            DropIndex("dbo.Winners", new[] { "MatchId" });
            DropIndex("dbo.Winners", new[] { "EmailAddress" });
            DropIndex("dbo.Matches", new[] { "CardDeckId" });
            DropIndex("dbo.Cards", new[] { "CardDeckId" });
            DropTable("dbo.MatchesPlayed");
            DropTable("dbo.Winners");
            DropTable("dbo.Players");
            DropTable("dbo.Matches");
            DropTable("dbo.Cards");
            DropTable("dbo.CardDecks");
        }
    }
}
