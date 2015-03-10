namespace HebbronModel
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    // This class sets up the Model that will extract data from the database and communicate with the HDTO.
    public partial class HebbronModel : DbContext
    {
        public HebbronModel()
            : base("name=HebbronModel")
        {
        }

        public virtual DbSet<Category> Categories { get; set; }
        public virtual DbSet<Product> Products { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Category>()
                .HasMany(e => e.Products)
                .WithRequired(e => e.Category)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Product>()
                .Property(e => e.Price)
                .HasPrecision(18, 0);
        }
    }
}
