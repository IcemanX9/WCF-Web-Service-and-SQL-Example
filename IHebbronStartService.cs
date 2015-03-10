using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace HebbronStartService
{
    [ServiceContract]
    public interface IHebbronStartService
    {
        [OperationContract]
        IEnumerable<HDTOCategory> Categories(); // states that Categories is to be returned by the HDTO 

        [OperationContract]
        HDTOProducts Products(); // states that Products is to be returned by the HDTO

        [OperationContract]
        HDTOProducts CatByName(string name); // states that Category by a certain name is to be returned by the HDTO
      
    }

}
