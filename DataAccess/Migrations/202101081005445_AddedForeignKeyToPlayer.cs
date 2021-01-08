namespace DataAccess.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddedForeignKeyToPlayer : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Matches", "Winner_EmailAddress", "dbo.Players");
            DropIndex("dbo.Players", new[] { "Account_EmailAddress" });
            DropColumn("dbo.Players", "EmailAddress");
            RenameColumn(table: "dbo.Players", name: "Account_EmailAddress", newName: "EmailAddress");
            DropPrimaryKey("dbo.Players");
            AlterColumn("dbo.Players", "EmailAddress", c => c.String(nullable: false, maxLength: 254));
            AddPrimaryKey("dbo.Players", "EmailAddress");
            CreateIndex("dbo.Players", "EmailAddress");
            AddForeignKey("dbo.Matches", "Winner_EmailAddress", "dbo.Players", "EmailAddress");
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Matches", "Winner_EmailAddress", "dbo.Players");
            DropIndex("dbo.Players", new[] { "EmailAddress" });
            DropPrimaryKey("dbo.Players");
            AlterColumn("dbo.Players", "EmailAddress", c => c.String(maxLength: 254));
            AddPrimaryKey("dbo.Players", "EmailAddress");
            RenameColumn(table: "dbo.Players", name: "EmailAddress", newName: "Account_EmailAddress");
            AddColumn("dbo.Players", "EmailAddress", c => c.String(nullable: false, maxLength: 254));
            CreateIndex("dbo.Players", "Account_EmailAddress");
            AddForeignKey("dbo.Matches", "Winner_EmailAddress", "dbo.Players", "EmailAddress");
        }
    }
}
