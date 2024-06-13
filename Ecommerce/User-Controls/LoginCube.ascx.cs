using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce.User_Controls
{
    public partial class LoginCube : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["login"] == "ok")
                {
                    LoginContainer.Visible = false;
                    LtlMsg.Text = "שלום ישראל ישראלי";
                }
            }

        }
        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            if (TxtUser.Text == "abc" && TxtPass.Text == "123")
            {
                Session["Login"] = "ok";
                Response.Redirect("/AdminManager");
            }
            else
            {
                LtlMsg.Text = "שם / סיסמה אינם נכונים";
            }
        }
    }
}