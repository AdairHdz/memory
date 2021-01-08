namespace DataAccess.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddedSaltDefaultValueNullableInPropertyTrying : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Accounts", "Salt", c => c.String(maxLength: 254, nullable: true, defaultValue: "$2a$04$DXnem3yCZc6RNQKVNFKLtO"));
        }
        
        public override void Down()
        {
            //DropColumn("dbo.Accounts", "Salt");
        }
    }
}
