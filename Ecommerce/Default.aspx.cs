using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)// במידה ומדובר בטעינה ראשונית של העמוד
            {
                TxtFullname.Text = new Random().Next(100).ToString();
                ImgUser.ImageUrl = "/images/israel.jpg";
                HplTerms.Text = "תנאי שימוש באתר קישור ראשוני";
                HplTerms.NavigateUrl = "terms.aspx";
            }
            else
            {
                ImgUser.ImageUrl = "/images/google-israel.png";
                HplTerms.Text = "תנאי שימוש בתגובה לאירוע";
                HplTerms.NavigateUrl = "contact.aspx";
            }


            
        }

        protected void BtnReg_Click(object sender, EventArgs e)
        {
            if(TxtFullname.Text.Length > 6) {
                LtlMsg.Text = "כמות התווים המקסימלית היא שישה תווים";
            
            }
            if (FlD.HasFile) // בדיקה האם נבחר קובץ
            {
                //נשמור את הקובץ בתוך תיקייה פנימית שלנו
                FlD.SaveAs(Server.MapPath("/uploads/users/")+ FlD.FileName);
                ImgUser.ImageUrl = "/uploads/users/" + FlD.FileName;
            }
        }
    }
}