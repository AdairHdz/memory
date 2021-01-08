namespace DataAccess.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class ChangedDatabaseStructure : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.MatchesPlayed", "EmailAddress", "dbo.Players");
            DropForeignKey("dbo.MatchesPlayed", "MatchId", "dbo.Matches");
            DropForeignKey("dbo.Winners", "EmailAddress", "dbo.Players");
            DropForeignKey("dbo.Winners", "MatchId", "dbo.Matches");
            DropForeignKey("dbo.Cards", "CardDeckId", "dbo.CardDecks");
            DropForeignKey("dbo.Matches", "CardDeckId", "dbo.CardDecks");
            DropIndex("dbo.Winners", new[] { "EmailAddress" });
            DropIndex("dbo.Winners", new[] { "MatchId" });
            DropIndex("dbo.MatchesPlayed", new[] { "EmailAddress" });
            DropIndex("dbo.MatchesPlayed", new[] { "MatchId" });
            DropPrimaryKey("dbo.CardDecks");
            DropPrimaryKey("dbo.Cards");
            DropPrimaryKey("dbo.Matches");
            CreateTable(
                "dbo.Accounts",
                c => new
                    {
                        EmailAddress = c.String(nullable: false, maxLength: 254),
                        Username = c.String(nullable: false),
                        Password = c.String(nullable: false),
                        Salt = c.String(nullable: false, maxLength: 5),
                        EmailWasVerified = c.Boolean(nullable: false),
                        ActivationToken = c.String(maxLength: 50),
                        RecoveryToken = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.EmailAddress);
            
            AddColumn("dbo.CardDecks", "Id", c => c.Int(nullable: false, identity: true));
            AddColumn("dbo.Cards", "Id", c => c.Int(nullable: false, identity: true));
            AddColumn("dbo.Matches", "Id", c => c.Int(nullable: false, identity: true));
            AddColumn("dbo.Matches", "EmailAddress", c => c.String(maxLength: 254));
            AddColumn("dbo.Players", "Score", c => c.Int(nullable: false));
            AddColumn("dbo.Players", "Account_EmailAddress", c => c.String(maxLength: 254));
            AddPrimaryKey("dbo.CardDecks", "Id");
            AddPrimaryKey("dbo.Cards", "Id");
            AddPrimaryKey("dbo.Matches", "Id");
            CreateIndex("dbo.Matches", "EmailAddress");
            CreateIndex("dbo.Players", "Account_EmailAddress");
            AddForeignKey("dbo.Players", "Account_EmailAddress", "dbo.Accounts", "EmailAddress");
            AddForeignKey("dbo.Matches", "EmailAddress", "dbo.Players", "EmailAddress");
            AddForeignKey("dbo.Cards", "CardDeckId", "dbo.CardDecks", "Id", cascadeDelete: true);
            AddForeignKey("dbo.Matches", "CardDeckId", "dbo.CardDecks", "Id", cascadeDelete: true);
            DropColumn("dbo.CardDecks", "CardDeckId");
            DropColumn("dbo.CardDecks", "ThematicId");
            DropColumn("dbo.Cards", "CardId");
            DropColumn("dbo.Matches", "MatchId");
            DropColumn("dbo.Matches", "StatusId");
            DropColumn("dbo.Matches", "Duration");
            DropColumn("dbo.Players", "UserName");
            DropColumn("dbo.Players", "Password");
            DropColumn("dbo.Players", "TotalScore");
            DropColumn("dbo.Players", "EmailWasVerified");
            DropColumn("dbo.Players", "ActivationToken");
            DropColumn("dbo.Players", "RecoveryToken");
            DropTable("dbo.Winners");
            DropTable("dbo.MatchesPlayed");
        }
        
        public override void Down()
        {
            CreateTable(
                "dbo.MatchesPlayed",
                c => new
                    {
                        EmailAddress = c.String(nullable: false, maxLength: 254),
                        MatchId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.EmailAddress, t.MatchId });
            
            CreateTable(
                "dbo.Winners",
                c => new
                    {
                        EmailAddress = c.String(nullable: false, maxLength: 254),
                        MatchId = c.Int(nullable: false),
                        Score = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.EmailAddress, t.MatchId });
            
            AddColumn("dbo.Players", "RecoveryToken", c => c.String(maxLength: 50));
            AddColumn("dbo.Players", "ActivationToken", c => c.String(maxLength: 50));
            AddColumn("dbo.Players", "EmailWasVerified", c => c.Boolean(nullable: false));
            AddColumn("dbo.Players", "TotalScore", c => c.Int(nullable: false));
            AddColumn("dbo.Players", "Password", c => c.String(nullable: false));
            AddColumn("dbo.Players", "UserName", c => c.String(nullable: false));
            AddColumn("dbo.Matches", "Duration", c => c.Int(nullable: false));
            AddColumn("dbo.Matches", "StatusId", c => c.Int(nullable: false));
            AddColumn("dbo.Matches", "MatchId", c => c.Int(nullable: false, identity: true));
            AddColumn("dbo.Cards", "CardId", c => c.Int(nullable: false, identity: true));
            AddColumn("dbo.CardDecks", "ThematicId", c => c.Int(nullable: false));
            AddColumn("dbo.CardDecks", "CardDeckId", c => c.Int(nullable: false, identity: true));
            DropForeignKey("dbo.Matches", "CardDeckId", "dbo.CardDecks");
            DropForeignKey("dbo.Cards", "CardDeckId", "dbo.CardDecks");
            DropForeignKey("dbo.Matches", "EmailAddress", "dbo.Players");
            DropForeignKey("dbo.Players", "Account_EmailAddress", "dbo.Accounts");
            DropIndex("dbo.Players", new[] { "Account_EmailAddress" });
            DropIndex("dbo.Matches", new[] { "EmailAddress" });
            DropPrimaryKey("dbo.Matches");
            DropPrimaryKey("dbo.Cards");
            DropPrimaryKey("dbo.CardDecks");
            DropColumn("dbo.Players", "Account_EmailAddress");
            DropColumn("dbo.Players", "Score");
            DropColumn("dbo.Matches", "EmailAddress");
            DropColumn("dbo.Matches", "Id");
            DropColumn("dbo.Cards", "Id");
            DropColumn("dbo.CardDecks", "Id");
            DropTable("dbo.Accounts");
            AddPrimaryKey("dbo.Matches", "MatchId");
            AddPrimaryKey("dbo.Cards", "CardId");
            AddPrimaryKey("dbo.CardDecks", "CardDeckId");
            CreateIndex("dbo.MatchesPlayed", "MatchId");
            CreateIndex("dbo.MatchesPlayed", "EmailAddress");
            CreateIndex("dbo.Winners", "MatchId");
            CreateIndex("dbo.Winners", "EmailAddress");
            AddForeignKey("dbo.Matches", "CardDeckId", "dbo.CardDecks", "CardDeckId");
            AddForeignKey("dbo.Cards", "CardDeckId", "dbo.CardDecks", "CardDeckId");
            AddForeignKey("dbo.Winners", "MatchId", "dbo.Matches", "MatchId");
            AddForeignKey("dbo.Winners", "EmailAddress", "dbo.Players", "EmailAddress");
            AddForeignKey("dbo.MatchesPlayed", "MatchId", "dbo.Matches", "MatchId", cascadeDelete: true);
            AddForeignKey("dbo.MatchesPlayed", "EmailAddress", "dbo.Players", "EmailAddress", cascadeDelete: true);
        }
    }
}
