namespace DataAccess.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddedNavigabilityFromAccountToPlayer : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Matches", "EmailAddress", "dbo.Players");
            DropForeignKey("dbo.Players", "EmailAddress", "dbo.Accounts");
            DropIndex("dbo.Matches", new[] { "EmailAddress" });
            DropIndex("dbo.Players", new[] { "EmailAddress" });
            DropPrimaryKey("dbo.Players");
            DropPrimaryKey("dbo.Accounts");
            AlterColumn("dbo.Matches", "EmailAddress", c => c.String(maxLength: 128));
            AlterColumn("dbo.Players", "EmailAddress", c => c.String(nullable: false, maxLength: 128));
            AlterColumn("dbo.Accounts", "EmailAddress", c => c.String(nullable: false, maxLength: 128));
            AddPrimaryKey("dbo.Players", "EmailAddress");
            AddPrimaryKey("dbo.Accounts", "EmailAddress");
            CreateIndex("dbo.Accounts", "EmailAddress");
            CreateIndex("dbo.Matches", "EmailAddress");
            AddForeignKey("dbo.Accounts", "EmailAddress", "dbo.Players", "EmailAddress");
            AddForeignKey("dbo.Matches", "EmailAddress", "dbo.Players", "EmailAddress");
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Matches", "EmailAddress", "dbo.Players");
            DropForeignKey("dbo.Accounts", "EmailAddress", "dbo.Players");
            DropIndex("dbo.Matches", new[] { "EmailAddress" });
            DropIndex("dbo.Accounts", new[] { "EmailAddress" });
            DropPrimaryKey("dbo.Accounts");
            DropPrimaryKey("dbo.Players");
            AlterColumn("dbo.Accounts", "EmailAddress", c => c.String(nullable: false, maxLength: 254));
            AlterColumn("dbo.Players", "EmailAddress", c => c.String(nullable: false, maxLength: 254));
            AlterColumn("dbo.Matches", "EmailAddress", c => c.String(maxLength: 254));
            AddPrimaryKey("dbo.Accounts", "EmailAddress");
            AddPrimaryKey("dbo.Players", "EmailAddress");
            CreateIndex("dbo.Players", "EmailAddress");
            CreateIndex("dbo.Matches", "EmailAddress");
            AddForeignKey("dbo.Players", "EmailAddress", "dbo.Accounts", "EmailAddress");
            AddForeignKey("dbo.Matches", "EmailAddress", "dbo.Players", "EmailAddress");
        }
    }
}
