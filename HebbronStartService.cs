using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace HebbronStartService
{

    public class HebbronStartService : IHebbronStartService
    {
        // creates an instance of the HebbronModel called db which is the link between the two projects.
        private HebbronModel.HebbronModel db = new HebbronModel.HebbronModel(); 
        // declares the lowest level of stock the vendor is willing to go before stating they're out of stock.
        private int lowestLevel = 1;
 
        // This method returns information on a single product with the ID that is supplied by the user.
        public HDTOProducts GetProductById(int id)
        {
            try
            {
                // finds the product from within the Products table in the database and assigns is to "product"
                var product = db.Products.Find(id);

                // calls the method "IsInStock" and passes the product as a parameter
                bool inStock = IsInStock(product);

                // an if statement checking that the specified product is active and available
                if ((product != null) && (product.Active = true))
                {
                    // creates a new HDTOProducts object and extracts all required data from the database about that product and assigns it to p
                    HDTOProducts p = new HDTOProducts { ProductId = product.ProductId, Description = product.Description, Name = product.Name, Price = product.Price, StockLevel = inStock };
                    //returns the HDTO object
                    return p;
                }
                else
                {
                    // if the product is inactive or non-existant return null
                    return null;
                }
            }
            catch
            {
                // if an error is thrown it is caught here and null is returned.
                return null;
            }
        }

        // this method returns specified data on a single category by name
        public HDTOCategory GetCategoryByName(string Name)
        {
            try
            {
                // finds the category from within the Categories table in the database and assigns it to "category"
                var category = db.Categories.Find(Name);

                // an if statement checking that the catgory is active and that it exists
                if ((category != null) && (category.Active = true))
                {
                    // creates a new HDTOCategory object and extracts all required data from the database about that category and assigns it to c
                    HDTOCategory c = new HDTOCategory { CategoryId = category.CategoryId, Decription = category.Description, Name = category.Name };
                    // returns the HDTO object
                    return c;
                }
                else
                {
                    // if the category is inactive or non-existant return null
                    return null;
                }
            }
            catch
            {
                // if an error is thrown it is caught here and null is returned.
                return null;
            }
        }

        // this method gets all products that are part of the specified category name
        public HDTOProducts GetProductsByCategory(string Name)
        {
            try
            {
                // finds the category from within the Categories table in the database and assigns it to "category"
                var category = db.Categories.Find(Name);
                // finds all active products associated with that category and assigns them to "products"
                var products = category.Products.Where(x => x.Active == true);

                // looks at "products" in the Products in the database 
                var p = from products in db.Products
                // selects each product entry in the database and extracts the specified information about each product.
                select new HDTOProducts { ProductId = products.ProductId, Description = products.Description, Name = products.Name, Price = products.Price, StockLevel = inStock };
                // returns the collection of products.
                return p;
              
            }
            catch (Exception ex)
            {
                // if an exception is thrown return null.
                return null;
            }
        }

        // this method returns all categories as Enumerable
        public IEnumerable<HDTOCategory> Categories() 
        {
            try
            {
                var q = from cat in db.Categories
                        // selects the CategoryId, Description and Name from "cat" in The categories table in the database
                        select new HDTOCategory { CategoryId = cat.CategoryId, Decription = cat.Description, Name = cat.Name }; 
                return q.AsEnumerable(); // Then returns the categories as enumerable.
            }
            catch (Exception ex) // declares an exception called ex
            {
                return null; // incase of an error during this process the exception returns null
            }
        }

        // this method enables StockLevel to become a boolean instead of an int making it easier for the user 
        // to read and give the company more privacy.
        private bool IsInStock(HebbronModel.Product product)
        {
            // returns true if the StockLevel is above the variable "lowestLevel"
            if (product.StockLevel > lowestLevel)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

    }
}
