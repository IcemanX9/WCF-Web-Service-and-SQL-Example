using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace HebbronStartService
{
    [DataContract]
    public class HDTOCategory
    {
            [DataMember]
            public int CategoryId { get; set; }  // States that the CategoryId is to be retrieved from the server
            [DataMember]
            public string Name { get; set; } // states that the Name is to be retrieved from the server
            [DataMember]
            public string Decription { get; set; } // states that the description is to be retrieved from the server
    }
}
