using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Configuration;

namespace Ecommerce
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            List<Product> LstProd=new List<Product>();
            // שליפת מחרוזת ההתחברות מתוך קובץ הגדרות האפליקציה / שרת
            string ConnStr = ConfigurationManager.ConnectionStrings["ConnString"].ConnectionString;
            string Sql = "Select * from t_Product";
            SqlConnection Conn=new SqlConnection(ConnStr);
            Conn.Open();
            SqlCommand Cmd = new SqlCommand(Sql, Conn);
            SqlDataReader Dr=Cmd.ExecuteReader();
            while (Dr.Read())
            {
                Product Tmp=new Product() {
                    Pid =int.Parse( Dr["Pid"]+""),
                    Pname = Dr["Pname"] + "",
                    Price = float.Parse(Dr["Price"] + ""),
                    Pdesc = Dr["Pdesc"] + "",
                    Picname = Dr["Picname"] + ""
                };
                LstProd.Add( Tmp );
            }

            Conn.Close();
            Application["Prods"] = LstProd;
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}