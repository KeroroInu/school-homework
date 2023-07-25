<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="send.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        姓名：<asp:TextBox ID="txtSender" runat="server" Columns="10"></asp:TextBox>
        <br />
        内容：</span><asp:TextBox 
            ID="txtContent" runat="server" Columns="60"></asp:TextBox>
        <asp:Button ID="btnSend" runat="server" onclick="btnSend_Click" Text="发送" />
        <br />
    
    </div>
    </form>
</body>
</html>
