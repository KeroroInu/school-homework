<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="send.aspx.cs" Inherits="WebApplication6.send" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        姓名:<asp:TextBox ID="sender" Columns="10" runat="server"></asp:TextBox>
        内容: <asp:TextBox ID="content" Columns="60" runat="server"></asp:TextBox><asp:Button ID="Button1" runat="server" Text="发送" OnClick="BtnSend_Click"/>
    </div>
    </form>
</body>
</html>
