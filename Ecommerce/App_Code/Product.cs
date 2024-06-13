using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ecommerce
{
    public class Product
    {
        public int Pid { get; set; }
        public string Pname { get; set; }
        public float Price { get;set; }
        public string Picname { get; set; }
        public string Pdesc { get; set; }
    }
}