namespace DataAccess.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class SolveExcption : DbMigration
    {
        public override void Up()
        {
            RenameColumn(table: "dbo.Cards", name: "CardDecks_CardDeckId", newName: "CardDeckId");
            RenameIndex(table: "dbo.Cards", name: "IX_CardDecks_CardDeckId", newName: "IX_CardDeckId");
        }
        
        public override void Down()
        {
            RenameIndex(table: "dbo.Cards", name: "IX_CardDeckId", newName: "IX_CardDecks_CardDeckId");
            RenameColumn(table: "dbo.Cards", name: "CardDeckId", newName: "CardDecks_CardDeckId");
        }
    }
}
