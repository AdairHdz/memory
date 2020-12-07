namespace DataAccess.Migrations
{
    using System.Data.Entity.Migrations;

    public partial class AddingCardDeck : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Cards", "CardDeckId", "dbo.CardDecks");
            DropForeignKey("dbo.Matches", "CardDeckId", "dbo.CardDecks");
            DropPrimaryKey("dbo.CardDecks");
            AlterColumn("dbo.CardDecks", "CardDeckId", c => c.Int(nullable: false));
            AddPrimaryKey("dbo.CardDecks", "CardDeckId");
            AddForeignKey("dbo.Cards", "CardDeckId", "dbo.CardDecks", "CardDeckId");
            AddForeignKey("dbo.Matches", "CardDeckId", "dbo.CardDecks", "CardDeckId");
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Matches", "CardDeckId", "dbo.CardDecks");
            DropForeignKey("dbo.Cards", "CardDeckId", "dbo.CardDecks");
            DropPrimaryKey("dbo.CardDecks");
            AlterColumn("dbo.CardDecks", "CardDeckId", c => c.Int(nullable: false, identity: true));
            AddPrimaryKey("dbo.CardDecks", "CardDeckId");
            AddForeignKey("dbo.Matches", "CardDeckId", "dbo.CardDecks", "CardDeckId");
            AddForeignKey("dbo.Cards", "CardDeckId", "dbo.CardDecks", "CardDeckId");
        }
    }
}
