using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce
{
    // עליך ליצור עמוד בשם ProductList.aspx
    // בעמוד יש ליצור פקד רפיטר ולהציג באמצעותו את המוצרים.
    // כל מוצר יכלול כפתור פרטים נוספים שיוביל לעמוד המוצר
    public partial class ProductsList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string st = "aa";
            if(!IsPostBack)
            {
                List<Product> LstProd = new List<Product>();// הגדרנו רשימה של מוצרים
                LstProd.Add(new Product()
                {
                    Pid = 5,
                    Pname = "bread",
                    Price = 100,
                    Picname="bread.jpg"
                });
                LstProd.Add(new Product()
                {
                    Pid = 6,
                    Pname = "milk",
                    Price = 20,
                    Picname = "milk.jpg"
                });
                LstProd.Add(new Product()
                {
                    Pid = 20,
                    Pname = "eggs",
                    Price = 50,
                    Picname = "eggs.jpg"
                });
                RptProducts.DataSource = LstProd;
                RptProducts.DataBind();
            }
        }
    }
}