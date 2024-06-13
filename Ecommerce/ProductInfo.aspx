<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductInfo.aspx.cs" Inherits="Ecommerce.ProductInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            שם המוצר <asp:Literal ID="LtlPname" runat="server" /><br />
            מחיר <asp:literal  ID="LtlPrice" runat="server" />

        </div>
    </form>
</body>
</html>
