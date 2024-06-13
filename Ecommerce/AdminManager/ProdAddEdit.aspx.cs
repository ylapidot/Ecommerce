using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce.AdminManager
{
    public partial class ProdAddEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string Pid = Request["Pid"] + "";
                if(string.IsNullOrEmpty(Pid) ) {
                    Pid = "-1";
                        }
                else
                {
                    int  pid=int.Parse(Pid);// המרה של המשתנה למספר שלם, לצורך חיפוש במאגר המוצרים
                    List<Product> LstProd = (List<Product>)Application["Prods"];
                    for(int i=0;i<LstProd.Count;i++)
                    {
                        if (LstProd[i].Pid==pid)
                        {
                            TxtPname.Text = LstProd[i].Pname;
                            TxtPrice.Text = LstProd[i].Price + "";
                            TxtPdesc.Text = LstProd[i].Pdesc;
                            ImgPicname.ImageUrl="/uploads/pics/"+ LstProd[i].Picname;
                            HidPid.Value = Pid;
                        }
                    }
                }
            }
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            string Picname = "";
            // נבדוק האם נבחר קובץ תמונה
            if(UploadPic.HasFile)
            {
                // נשמור את קובץ התמונה בתיקיית התמונות תחת שם חדש שנייצר בעצמינו
                // נעדכן את השדה שם תמונה שיישמר בבסיס הנתונים
                Picname = GlobFunc.GetRandStr(8);
                // "abcdefgh" + ""
                string OriginFileName=UploadPic.FileName; // "c.nn.dnde.jpg"
                int index = OriginFileName.LastIndexOf('.');// מציאת המיקום של התו נקודה האחרון בשם הקובץ
                string Ext = OriginFileName.Substring(index);
                Picname += Ext;// "abcdefgh.jpg"
                string FullPath = Server.MapPath("/uploads/pics/");// "C:\windowdd\ddfdfdd\"
                UploadPic.SaveAs(FullPath + Picname);// שמירת התמונה שהועלתה בשם שיצרנו עבורה
            }
            else
            {
                int index = ImgPicname.ImageUrl.LastIndexOf('/');
                Picname = ImgPicname.ImageUrl.Substring(index+1);
            }
            string Sql = "";
            if(HidPid.Value=="-1") // הוספת מוצר חדש
            {
                Sql = "insert into t_Product (Pname,Price,Pdesc,Picname) values ";
                Sql += $"( N'{TxtPname.Text}',{TxtPrice.Text} ,N'{TxtPdesc.Text}',N'{Picname}')";
            }
            else
            {
                Sql = "Update t_Product set ";
                Sql += $" Pname=N'{TxtPname.Text }',";
                Sql += $" Price={TxtPrice.Text},";
                Sql += $" Pdesc=N'{TxtPdesc.Text}',";
                Sql += $" Picname=N'{Picname}' ";
                Sql += $" Where Pid={HidPid.Value}";

            }
            
            
          
            // שליפת מחרוזת ההתחברות מתוך קובץ הגדרות האפליקציה / שרת
            string ConnStr = ConfigurationManager.ConnectionStrings["ConnString"].ConnectionString;           
            SqlConnection Conn = new SqlConnection(ConnStr);
            Conn.Open();
            SqlCommand Cmd = new SqlCommand(Sql, Conn);
            Cmd.ExecuteNonQuery();// הפעלת השאילתה שלא מחזירה נתונים

            // טעינה מחודשת של רשימת המוצרים אל האפליקיישן
            List<Product> LstProd = new List<Product>();
            Sql = "select * from t_Product";
            Cmd.CommandText = Sql;
            SqlDataReader Dr = Cmd.ExecuteReader();
            
            while (Dr.Read())
            {
                Product Tmp = new Product()
                {
                    Pid = int.Parse(Dr["Pid"] + ""),
                    Pname = Dr["Pname"] + "",
                    Price = float.Parse(Dr["Price"] + ""),
                    Pdesc = Dr["Pdesc"] + "",
                    Picname = Dr["Picname"] + ""
                };
                LstProd.Add(Tmp);
            }
            
            Conn.Close();
            Application["Prods"] = LstProd;
            Response.Redirect("ProductList.aspx");
        }
    }
}