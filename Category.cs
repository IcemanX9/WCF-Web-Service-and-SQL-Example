namespace HebbronModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Web.Mvc;

    [Table("Category")]
    public partial class Category
    {
        public Category()
        {
            Products = new HashSet<Product>(); // declares a hashset called products in the categories constructer  
        }

         [HiddenInput(DisplayValue = false)] 
        public int CategoryId { get; set; } // states that the category id must be returned from the server

        [Required]
        public string Name { get; set; } // states that the name of the category must be returned from the server

        [Required]
        public string Description { get; set; } // states that the category description must be returned from the server

        [HiddenInput(DisplayValue = false)]
        public bool Active { get; set; } // states that the catgeories soft deletion status is returned from the server.

        public virtual ICollection<Product> Products { get; set; } // states that there should be a collection of products returned from the server.
    }
}
