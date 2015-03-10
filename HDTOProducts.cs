using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace HebbronStartService
{
    [DataContract]
    class HDTOProducts
    {
        [DataMember]
        public int ProductId { get; set; } // states that the productid must be returned from the server
        
        [DataMember]
        public int CategoryId { get; set; } // states that the categoryid must be returned from the server

        [DataMember]
        public string Name { get; set; } // states that the name of the product must be returned from the server

        [DataMember]
        public string Description { get; set; } // states that the product description must be returned from the server
       
        [DataMember]
        public decimal Price { get; set; } // states that the product price must be returned from the server

        [DataMember]
        public bool StockLevel { get; set; } // states that the amount of stock left must be returned from the server

        [DataMember]
        public bool Active { get; set; } // states that the products soft delete status must be returned from the server

    }
}
