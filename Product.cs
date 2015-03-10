namespace HebbronModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Product")]
    public partial class Product
    {
        public int ProductId { get; set; } // states that the productid must be returned from the server

        public int CategoryId { get; set; } // states that the categoryid must be returned from the server

        [Required]
        public string Name { get; set; } // states that the name of the product must be returned from the server

        [Required]
        public string Description { get; set; } // states that the product description must be returned from the server

        public decimal Price { get; set; } // states that the product price must be returned from the server

        public int StockLevel { get; set; } // states that the amount of stock left must be returned from the server

        public bool Active { get; set; } // states that the products soft delete status must be returned from the server

        public virtual Category Category { get; set; } 
    }
}
