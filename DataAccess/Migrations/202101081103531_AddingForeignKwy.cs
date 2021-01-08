namespace DataAccess.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddingForeignKwy : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Cards", "CardDeck_CardDeckId", "dbo.CardDecks");
            DropIndex("dbo.Cards", new[] { "CardDeck_CardDeckId" });
            RenameColumn(table: "dbo.Cards", name: "CardDeck_CardDeckId", newName: "CardDeckId");
            AlterColumn("dbo.Cards", "CardDeckId", c => c.Int(nullable: false));
            CreateIndex("dbo.Cards", "CardDeckId");
            AddForeignKey("dbo.Cards", "CardDeckId", "dbo.CardDecks", "CardDeckId", cascadeDelete: true);
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Cards", "CardDeckId", "dbo.CardDecks");
            DropIndex("dbo.Cards", new[] { "CardDeckId" });
            AlterColumn("dbo.Cards", "CardDeckId", c => c.Int());
            RenameColumn(table: "dbo.Cards", name: "CardDeckId", newName: "CardDeck_CardDeckId");
            CreateIndex("dbo.Cards", "CardDeck_CardDeckId");
            AddForeignKey("dbo.Cards", "CardDeck_CardDeckId", "dbo.CardDecks", "CardDeckId");
        }
    }
}
