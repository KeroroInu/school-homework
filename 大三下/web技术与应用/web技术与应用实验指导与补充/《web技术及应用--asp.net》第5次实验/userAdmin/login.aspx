<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        管理员登录<br />
        姓名：<asp:TextBox ID="username" runat="server"></asp:TextBox>
        <br />
        密码：<asp:TextBox ID="userpass" runat="server">  </asp:TextBox>
        <br />
        <asp:Button ID="btnOK" runat="server" onclick="btnOK_Click" Text="登录" />
        <br />
    </div>
    </form>
</body>
</html>
