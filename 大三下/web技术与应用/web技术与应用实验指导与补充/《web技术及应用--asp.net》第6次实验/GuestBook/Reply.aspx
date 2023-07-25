<%@ Page language="c#" Codebehind="Reply.aspx.cs" AutoEventWireup="false" Inherits="GuestBook.Reply" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>管理员回复</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="my.css" type="text/css" rel="stylesheet">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
	</HEAD>
	<body vLink="#000000" aLink="#000000" link="#000000">
		<form id="test" method="post" runat="server">
			<table style="WIDTH: 528px; HEIGHT: 352px" cellSpacing="1" cellPadding="10" width="528"
				align="center" bgColor="#000000" border="0">
				<tr>
					<td bgColor="#eefbff">
						<div align="center">
							<p><asp:textbox id="txtReply" runat="server" Height="217px" Width="418px" TextMode="MultiLine"></asp:textbox></p>
							<hr style="WIDTH: 505px; HEIGHT: 2px" SIZE="8">
							<P><FONT size="2">&nbsp;</FONT><asp:button id="Button1" runat="server" Text="回复"></asp:button><font face="宋体">&nbsp;&nbsp;
									<asp:button id="Button2" runat="server" Text="返回"></asp:button>
								</font>
							</P>
						</div>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
