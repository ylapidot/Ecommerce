﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce.AdminManager
{
    public partial class ProductList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                // חיבור מאגר המוצרים לרפיטר
                List<Product> LstProd = (List<Product>)Application["Prods"];
                RptProd.DataSource = LstProd;
                RptProd.DataBind();
            }
        }
    }
}