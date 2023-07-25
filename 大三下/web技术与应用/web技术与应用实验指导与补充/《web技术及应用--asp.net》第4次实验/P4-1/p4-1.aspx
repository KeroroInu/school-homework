<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="p4-1.aspx.cs" Inherits="p4._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>实验题4.1</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TBResult" runat="server" Height="24px" Width="136px"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Height="32px" Text="1" Width="32px" OnClick="getInputValue" />
        <asp:Button ID="Button2" runat="server" Height="32px" Text="2" Width="32px" OnClick="getInputValue" />
        <asp:Button ID="Button3" runat="server" Height="32px" Text="3" Width="32px" OnClick="getInputValue" />
        <asp:Button ID="BtnPlus" runat="server" Height="32px" Text="+" Width="32px" OnClick="Dispose" />
        <br />
        <asp:Button ID="Button4" runat="server" Height="32px" Text="4" Width="32px" OnClick="getInputValue" />
        <asp:Button ID="Button5" runat="server" Height="32px" Text="5" Width="32px" OnClick="getInputValue" />
        <asp:Button ID="Button6" runat="server" Height="32px" Text="6" Width="32px" OnClick="getInputValue" />
        <asp:Button ID="btnMinus" runat="server" Height="32px" Text="-" Width="32px" OnClick="Dispose" />
        <br />
        <asp:Button ID="Button7" runat="server" Height="32px" Text="7" Width="32px" OnClick="getInputValue" />
        <asp:Button ID="Button8" runat="server" Height="32px" Text="8" Width="32px" OnClick="getInputValue" />
        <asp:Button ID="Button9" runat="server" Height="32px" Text="9" Width="32px" OnClick="getInputValue" />
        <asp:Button ID="btnMulti" runat="server" Height="32px" Text="*" Width="32px" OnClick="Dispose" />
        <br />
        <asp:Button ID="Button0" runat="server" Height="32px" Text="0" Width="32px" OnClick="getInputValue" />
        <asp:Button ID="BtnClean" runat="server" Height="32px" Text="C" Width="32px" OnClick="Dispose" />
        <asp:Button ID="BtnEqual" runat="server" Height="32px" Text="=" Width="32px" OnClick="calculate" />
        <asp:Button ID="btnDivide" runat="server" Height="32px" Text="/" Width="32px" OnClick="Dispose" />
        <br />
        <asp:Label ID="LabelNum1" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="LabelOperator" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="LabelNum2" runat="server" Visible="False"></asp:Label>
    </div>
    </form>
</body>
</html>
