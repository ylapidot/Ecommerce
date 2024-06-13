using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

namespace Ecommerce
{
    public partial class Json : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                //Product p1 = new Product() { 
                // Pid=2,
                // Price=100,
                // Pname="bread",
                // Pdesc="The best bread",
                // Picname="bread.jpg"
                //};
                //string prodStr=JsonConvert.SerializeObject(p1);
                //LtlMsg.Text=prodStr;
                string prodStr = @"{""Pid"":90,""Pname"":""milk"",""Price"":70.0,""Picname"":""milk.jpg""}";
                Product p1=JsonConvert.DeserializeObject<Product>(prodStr);
                LtlMsg.Text = p1.Pname;
            }

        }
    }
}