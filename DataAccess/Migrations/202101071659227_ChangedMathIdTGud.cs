namespace DataAccess.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class ChangedMathIdTGud : DbMigration
    {
        public override void Up()
        {
            RenameTable(name: "dbo.MatchesPlayed", newName: "PlayerMatches");
            DropForeignKey("dbo.Cards", "CardDeckId", "dbo.CardDecks");
            DropForeignKey("dbo.Matches", "CardDeckId", "dbo.CardDecks");
            DropForeignKey("dbo.Winners", "EmailAddress", "dbo.Players");
            DropForeignKey("dbo.Winners", "MatchId", "dbo.Matches");
            DropForeignKey("dbo.MatchesPlayed", "MatchId", "dbo.Matches");
            DropIndex("dbo.Winners", new[] { "MatchId" });
            DropIndex("dbo.PlayerMatches", new[] { "MatchId" });
            RenameColumn(table: "dbo.PlayerMatches", name: "EmailAddress", newName: "Player_EmailAddress");
            RenameColumn(table: "dbo.PlayerMatches", name: "MatchId", newName: "Match_MatchId");
            RenameIndex(table: "dbo.PlayerMatches", name: "IX_EmailAddress", newName: "IX_Player_EmailAddress");
            DropPrimaryKey("dbo.Matches");
            DropPrimaryKey("dbo.PlayerMatches");
            AddColumn("dbo.Winners", "Matches_MatchId", c => c.String(maxLength: 128));
            AlterColumn("dbo.Matches", "MatchId", c => c.String(nullable: false, maxLength: 128));
            AlterColumn("dbo.PlayerMatches", "Match_MatchId", c => c.String(nullable: false, maxLength: 128));
            AddPrimaryKey("dbo.Matches", "MatchId");
            AddPrimaryKey("dbo.PlayerMatches", new[] { "Player_EmailAddress", "Match_MatchId" });
            CreateIndex("dbo.Winners", "Matches_MatchId");
            CreateIndex("dbo.PlayerMatches", "Match_MatchId");
            AddForeignKey("dbo.Cards", "CardDeckId", "dbo.CardDecks", "CardDeckId", cascadeDelete: true);
            AddForeignKey("dbo.Matches", "CardDeckId", "dbo.CardDecks", "CardDeckId", cascadeDelete: true);
            AddForeignKey("dbo.Winners", "EmailAddress", "dbo.Players", "EmailAddress", cascadeDelete: true);
            AddForeignKey("dbo.Winners", "Matches_MatchId", "dbo.Matches", "MatchId");
            AddForeignKey("dbo.PlayerMatches", "Match_MatchId", "dbo.Matches", "MatchId", cascadeDelete: true);
            DropColumn("dbo.Matches", "StatusId");
            DropColumn("dbo.Matches", "Duration");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Matches", "Duration", c => c.Int(nullable: false));
            AddColumn("dbo.Matches", "StatusId", c => c.Int(nullable: false));
            DropForeignKey("dbo.PlayerMatches", "Match_MatchId", "dbo.Matches");
            DropForeignKey("dbo.Winners", "Matches_MatchId", "dbo.Matches");
            DropForeignKey("dbo.Winners", "EmailAddress", "dbo.Players");
            DropForeignKey("dbo.Matches", "CardDeckId", "dbo.CardDecks");
            DropForeignKey("dbo.Cards", "CardDeckId", "dbo.CardDecks");
            DropIndex("dbo.PlayerMatches", new[] { "Match_MatchId" });
            DropIndex("dbo.Winners", new[] { "Matches_MatchId" });
            DropPrimaryKey("dbo.PlayerMatches");
            DropPrimaryKey("dbo.Matches");
            AlterColumn("dbo.PlayerMatches", "Match_MatchId", c => c.Int(nullable: false));
            AlterColumn("dbo.Matches", "MatchId", c => c.Int(nullable: false, identity: true));
            DropColumn("dbo.Winners", "Matches_MatchId");
            AddPrimaryKey("dbo.PlayerMatches", new[] { "EmailAddress", "MatchId" });
            AddPrimaryKey("dbo.Matches", "MatchId");
            RenameIndex(table: "dbo.PlayerMatches", name: "IX_Player_EmailAddress", newName: "IX_EmailAddress");
            RenameColumn(table: "dbo.PlayerMatches", name: "Match_MatchId", newName: "MatchId");
            RenameColumn(table: "dbo.PlayerMatches", name: "Player_EmailAddress", newName: "EmailAddress");
            CreateIndex("dbo.PlayerMatches", "MatchId");
            CreateIndex("dbo.Winners", "MatchId");
            AddForeignKey("dbo.MatchesPlayed", "MatchId", "dbo.Matches", "MatchId", cascadeDelete: true);
            AddForeignKey("dbo.Winners", "MatchId", "dbo.Matches", "MatchId");
            AddForeignKey("dbo.Winners", "EmailAddress", "dbo.Players", "EmailAddress");
            AddForeignKey("dbo.Matches", "CardDeckId", "dbo.CardDecks", "CardDeckId");
            AddForeignKey("dbo.Cards", "CardDeckId", "dbo.CardDecks", "CardDeckId");
            RenameTable(name: "dbo.PlayerMatches", newName: "MatchesPlayed");
        }
    }
}
