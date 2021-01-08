namespace DataAccess.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class LongerSaltField : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Accounts", "Password", c => c.String(nullable: false, maxLength: 254));
            AlterColumn("dbo.Accounts", "Salt", c => c.String(nullable: false, maxLength: 254));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Accounts", "Salt", c => c.String(nullable: false, maxLength: 5));
            AlterColumn("dbo.Accounts", "Password", c => c.String(nullable: false));
        }
    }
}
