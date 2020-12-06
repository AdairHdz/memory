namespace DataAccess.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class SolvingExepto : DbMigration
    {
        public override void Up()
        {
            RenameColumn(table: "dbo.Cards", name: "CardDeckId", newName: "CardDecks_CardDeckId");
            RenameIndex(table: "dbo.Cards", name: "IX_CardDeckId", newName: "IX_CardDecks_CardDeckId");
        }
        
        public override void Down()
        {
            RenameIndex(table: "dbo.Cards", name: "IX_CardDecks_CardDeckId", newName: "IX_CardDeckId");
            RenameColumn(table: "dbo.Cards", name: "CardDecks_CardDeckId", newName: "CardDeckId");
        }
    }
}
