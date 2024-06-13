<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Ecommerce.Login" %>
<%@ Register Src="~/User-Controls/LoginCube.ascx" TagPrefix="UC" TagName="LoginCube" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <UC:LoginCube id="LoginCube" runat="server" />
    </form>
</body>
</html>
