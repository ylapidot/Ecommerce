using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce
{
    public partial class ProductInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            
            // רשימה - רשימה מקושרת- רשימה חד כיוונית
            // זהו אוסף של איבירם כשר כל איבר מחובר לאיבר נוסף, ואילו האיבר האחרון מחובר לכולם 
            List<int> arr=new List<int>();// יצירת רשימה של מספרים שלמיפ
            arr.Add(50);
            arr.Add(10);
            arr.Add(-2);
            int sum = 0;
            for(int i=0;i<arr.Count; i++)
            {
                sum += arr[i];
            }
           
            
            int[]arr2=new int[100];// יצרנו מערך של מספרים שלמים בגודל 100
            
            
            
            
            List<Product> LstProd= new List<Product>();// הגדרנו רשימה של מוצרים
            LstProd.Add(new Product()
            {
                Pid = 5,
                Pname = "bread",
                Price = 100
            });
            LstProd.Add(new Product()
            {
                Pid = 6,
                Pname = "milk",
                Price = 20
            });
            LstProd.Add(new Product()
            {
                Pid = 20,
                Pname = "eggs",
                Price = 50
            });

            
            if (!IsPostBack)// במידה ומדובר בטעינה ראשונית
            {
                int i;
                string pid = Request["pid"]+"";// שליפת הפרמטר שנשלח לעמוד בשם pid
                for( i=0;i<LstProd.Count;i++)// מעבר על כל המוצרים במערכת וחיפוש המוצר עם קוד המוצר שקיבלנו
                {
                    if (LstProd[i].Pid+""== pid)// במידה ונמצא המוצר, הצגת פרטי המוצר בעמוד
                    {
                        LtlPname.Text = LstProd[i].Pname;
                        LtlPrice.Text = LstProd[i].Price+"";
                        break;
                    }
                }
                if(i== LstProd.Count) {// במידה והמוצר לא נמצא, הצגת הודעה מתאימה
                    LtlPname.Text = "לא קיים במערכת";
                    LtlPrice.Text =  "0";
                }
            }
        }
    }
}