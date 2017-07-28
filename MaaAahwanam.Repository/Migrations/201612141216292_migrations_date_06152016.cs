namespace MaaAahwanam.Repository.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class migrations_date_06152016 : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.OrderDetails", "attribute", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.OrderDetails", "attribute");
        }
    }
}
