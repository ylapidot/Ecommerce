<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ecommerce.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
<head runat="server">
    <title>העמוד הראשון</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Literal ID="LtlMsg" runat="server" />
            תמונה <asp:Image ID="ImgUser" runat="server" Width="300" Height="150"  />
            <img src="images/google-israel.png" width="200" height="300" />
          שם מלא  <asp:TextBox ID="TxtFullname" runat="server" /><br />
          
         סיסמה   <asp:TextBox ID="TxtPass" runat="server" TextMode="Password" /><br />
        הערות <asp:TextBox ID="Remrks" runat="server" textmode="MultiLine" Rows="5" Columns="40"/><br />
        תאריך לידה<asp:TextBox ID="TxtBirth" runat="server" Textmode="Date" />
            עיר <asp:DropDownList ID="DDLCity" runat="server">
                <asp:ListItem Text="בחר עיר" Value="-1" />
                 <asp:ListItem Text="חיפה" Value="10" />
                 <asp:ListItem Text="תל אביב" Value="20" />
                 <asp:ListItem Text="ירושלים" Value="50" />
                </asp:DropDownList>
            מגדר <asp:RadioButton ID="RdMale" runat="server" Text="זכר" GroupName="Gender" /> <asp:RadioButton ID="RdFemale" runat="server" Text="נקבה" GroupName="Gender" />
         <a href="Terms.aspx" target="_blank">תנאי שימוש</a> <asp:HyperLink ID="HplTerms" runat="server"  />  <asp:CheckBox ID="ChkTerms" runat="server" Text="אני מסכים לתקנון האתר" /><br />
            תמונה אישית<asp:FileUpload ID="FlD" runat="server"  />
            <asp:Button ID="BtnReg" runat="server" Text="הרשמה" OnClick="BtnReg_Click" />
        </div>
    </form>
</body>
</html>
