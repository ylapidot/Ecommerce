using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<City> LstCity=new List<City>();// יצירת רשימה של ערים
            LstCity.Add(new City() { 
            CityId=10,
            CityName="תל אביב"
            });
            LstCity.Add(new City()
            {
                CityId = 20,
                CityName = "חיפה"
            });
            LstCity.Add(new City()
            {
                CityId = 50,
                CityName = "ירושלים"
            });
            LstCity.Add(new City()
            {
                CityId = 100,
                CityName = "אשדוד"
            });
            if (!IsPostBack)// במידה וזו טעינה חדשה של העמוד
            {

                // מילוי תיבת רשימה בערכים באופן דינאמי
                for(int i= 0; i < LstCity.Count; i++)
                {
                    DDLCity.Items.Add(new ListItem(LstCity[i].CityName, LstCity[i].CityId + ""));
                }

                DDLCity.Items.Insert(0, "בחר עיר");

                //DDLCity.DataSource= LstCity;// הגדרץת מקור המידע עבור תיבת הרשימה
                //DDLCity.DataTextField = "CityName";
                //DDLCity.DataValueField = "CityId";
                //DDLCity.DataBind();

                // משימת תרגול
                // עליכם ליצור עמוד חדש בשם ListsPage.aspx
                // בעמוד הגדירו תיבות רשימה הבאות
                // תיבת רשימה עבור ערים, אותה תמלאו באמצעות רשימה של ערים שתחזיקו  בקוד
                // תיבת רשימה של מוצרים, אותה תמלאו בשם המוצר בתור טקסט וקוד מוצר בתור ערך
                // כמובן שיש ליצור רשימה של מוצרים בקוד
                // צרו תיבת רשימה נוספת עם מספרים מ 1 עד 90







            }
        }
    }
}