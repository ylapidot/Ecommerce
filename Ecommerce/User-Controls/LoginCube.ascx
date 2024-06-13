<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LoginCube.ascx.cs" Inherits="Ecommerce.User_Controls.LoginCube" %>
 <div id="LoginContainer" runat="server" >

            שם משתמש<asp:TextBox ID="TxtUser" runat="server" /><br />
            סיסמה<asp:TextBox ID="TxtPass" runat="server" Textmode="Password" /><br />
            <asp:Button ID="BtnLogin" runat="server" Text="התחבר" OnClick="BtnLogin_Click" /><br />
           
        </div>
 <asp:Literal ID="LtlMsg" runat="server" />