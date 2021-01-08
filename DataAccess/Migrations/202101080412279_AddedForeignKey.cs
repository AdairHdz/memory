namespace DataAccess.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddedForeignKey : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Cards", "CardDeckId", "dbo.CardDecks");
            DropForeignKey("dbo.Matches", "CardDeckId", "dbo.CardDecks");
            DropIndex("dbo.Cards", new[] { "CardDeckId" });
            DropIndex("dbo.Matches", new[] { "CardDeckId" });
            RenameColumn(table: "dbo.Cards", name: "CardDeckId", newName: "CardDeck_Id");
            RenameColumn(table: "dbo.Matches", name: "CardDeckId", newName: "CardDeck_Id");
            RenameColumn(table: "dbo.Matches", name: "EmailAddress", newName: "Winner_EmailAddress");
            RenameIndex(table: "dbo.Matches", name: "IX_EmailAddress", newName: "IX_Winner_EmailAddress");
            AlterColumn("dbo.Cards", "CardDeck_Id", c => c.Int());
            AlterColumn("dbo.Matches", "CardDeck_Id", c => c.Int());
            CreateIndex("dbo.Cards", "CardDeck_Id");
            CreateIndex("dbo.Matches", "CardDeck_Id");
            AddForeignKey("dbo.Cards", "CardDeck_Id", "dbo.CardDecks", "Id");
            AddForeignKey("dbo.Matches", "CardDeck_Id", "dbo.CardDecks", "Id");
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Matches", "CardDeck_Id", "dbo.CardDecks");
            DropForeignKey("dbo.Cards", "CardDeck_Id", "dbo.CardDecks");
            DropIndex("dbo.Matches", new[] { "CardDeck_Id" });
            DropIndex("dbo.Cards", new[] { "CardDeck_Id" });
            AlterColumn("dbo.Matches", "CardDeck_Id", c => c.Int(nullable: false));
            AlterColumn("dbo.Cards", "CardDeck_Id", c => c.Int(nullable: false));
            RenameIndex(table: "dbo.Matches", name: "IX_Winner_EmailAddress", newName: "IX_EmailAddress");
            RenameColumn(table: "dbo.Matches", name: "Winner_EmailAddress", newName: "EmailAddress");
            RenameColumn(table: "dbo.Matches", name: "CardDeck_Id", newName: "CardDeckId");
            RenameColumn(table: "dbo.Cards", name: "CardDeck_Id", newName: "CardDeckId");
            CreateIndex("dbo.Matches", "CardDeckId");
            CreateIndex("dbo.Cards", "CardDeckId");
            AddForeignKey("dbo.Matches", "CardDeckId", "dbo.CardDecks", "Id", cascadeDelete: true);
            AddForeignKey("dbo.Cards", "CardDeckId", "dbo.CardDecks", "Id", cascadeDelete: true);
        }
    }
}
