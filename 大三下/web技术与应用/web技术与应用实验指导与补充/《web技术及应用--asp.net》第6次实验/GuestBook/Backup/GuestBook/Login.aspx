<%@ Page Language="c#" ContentType="text/html" ResponseEncoding="gb2312" CodeBehind="Login.aspx.cs" AutoEventWireup="false" Inherits="GuestBook.Login" %>
<HTML>
	<HEAD>
		<title>管理员登陆</title>		
		<META http-equiv="Content-Type" content="text/html; charset=gb2312">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<LINK href="MStyle.css" rel="stylesheet">
	</HEAD>
	<body link="#000000" vlink="#000000" alink="#000000">
		<form runat="server">
			<table  align="center" cellpadding="0" cellspacing="0" height="257" width=60%>
				<tr class=MFont>
					<td bgcolor="#e8f5ff" align="center">
						<p><br>管理员名称:
								<asp:TextBox id="txtAdmin" runat="server" Width="104px" BorderStyle="Solid" BorderWidth="1px"
									Font-Names="宋体" Font-Size="X-Small"></asp:TextBox>
						</p>
						<p>管理员密码:
								<asp:TextBox id="txtPassword" runat="server" Width="104px" BorderStyle="Solid" BorderWidth="1px"
									Font-Names="宋体" Font-Size="X-Small" TextMode="Password"></asp:TextBox><br>
						</p>
					</td>
				</tr>
				<tr>
					<td bgcolor="#e8f5ff" align="center">
						<P><font color="#000000">
								<asp:Button id="Button1" runat="server" Text="登陆"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;
								<asp:Button id="Button2" runat="server" Text="返回"></asp:Button>
								
						   </font>
						</P>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
