<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Ecommerce.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
<head runat="server">
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  </head>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-6">
                    שם<asp:TextBox ID="TxtFname" runat="server" /><br />
                    <asp:Button ID="BtnReg" runat="server" Text="הרשמה" />
           עיר <asp:DropDownList ID="DDLCity" runat="server">   
               <asp:ListItem Text="אשדוד" Value="10" />
               <asp:ListItem Text="חיפה" Value="20" />
               <asp:ListItem Text="תל אביב" Value="30" />
            </asp:DropDownList>
            שם<asp:TextBox ID="TxtPass" runat="server" TextMode="Password" /><br />
                </div>
            </div>
           
        </div>
    </form>
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
