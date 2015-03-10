using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace HebbronModel
{

        [MetadataType(typeof(CategoryMetaData))]
        public partial class Category
        {
        }
        internal sealed class CategoryMetaData
        {
            private CategoryMetaData()
            {
            }
            [HiddenInput(DisplayValue = false)]
            public int CategoryId { get; set; }
            [Required]
            [Display(Name = "Category Name")]
            public string Name { get; set; }
            [Required]
            [Display(Name = "Category Description")]
            public string Description { get; set; }
            [HiddenInput(DisplayValue = false)]
            public bool Active { get; set; }
        }
    }

