<%@ Page language="c#" Codebehind="Guest.aspx.cs" AutoEventWireup="false" Inherits="GuestBook.GuestBook" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>��������</title>
		<meta content="False" name="vs_snapToGrid">
		<meta content="True" name="vs_showGrid">
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<LINK href="MStyle.css" rel="stylesheet">
	</HEAD>
	<body vLink="#000000" aLink="#000000" link="#000000" class=body>
		<form id="Form1" method="post" runat="server">
			<table cellSpacing="0" cellPadding="0" width="70%" align="center" border="0">
				<tr>
					<td align="center" width="100%" bgColor="#000000" height="26"><font class=title>��������</font></td>
				</tr>
			</table>
			<table cellSpacing="0" cellPadding="0" width="70%" align="center" border="0">
				<tr>
					<td bgColor="#ffffff">
						<table cellSpacing="0" cellPadding="0" width="100%" align="left" border="0">
							<tr bgColor="#ffffff">
								<td width="75%" colSpan="1"><font class="Mfont">����:</font>
									<asp:textbox id="txtName" runat="server" Width="260px" BorderStyle="Solid" BorderWidth="1px"></asp:textbox><br>
									<asp:requiredfieldvalidator id="validatorName" runat="server" ErrorMessage="���������Ĵ�����" ControlToValidate="txtName"></asp:requiredfieldvalidator></td>
								<td width="25%" rowSpan="100">
									<table height="100%" cellSpacing="1" cellPadding="5" width="100%" bgColor="#999999" border="0">
										<tr>
											<td vAlign="middle" bgColor="#ffffff">
												<div align="center"><IMG id="face" alt="" src="" runat="server"></div>
											</td>
										</tr>
									</table>
									<p align="center"><SELECT id="lstPic" onchange="document.images['face'].src=options[selectedIndex].value;"
											name="lstPic" runat="server"></SELECT><BR>
										<font color="#ff3333">��ѡ��ͷ��</font>
									</p>
								</td>
							</tr>
							<tr bgColor="#ffffff" width="75%">
								<td><font class="MFont">�Ա�:</font>
									<asp:dropdownlist id="lstSex" runat="server" Font-Names="����" Font-Size="X-Small" AutoPostBack="True">
										<asp:ListItem Value="˧��">˧��</asp:ListItem>
										<asp:ListItem Value="��Ů">��Ů</asp:ListItem>
									</asp:dropdownlist></td>
							</tr>
							<tr bgColor="#ffffff" width="75%">
								<td><font class="MFont">OICQ:</font>
									<asp:textbox id="txtOicq" runat="server" Width="260px" BorderStyle="Solid" BorderWidth="1px"></asp:textbox><asp:rangevalidator id="validatorOicq" runat="server" ErrorMessage="���QQ�����д���" ControlToValidate="txtOicq"
										MaximumValue="9" MinimumValue="0"></asp:rangevalidator></td>
							</tr>
							<tr bgColor="#ffffff" width="75%">
								<td><font class="mfont">����:</font>
									<asp:textbox id="txtEmail" runat="server" Width="260px" BorderStyle="Solid" BorderWidth="1px"
										Font-Names="����" Font-Size="X-Small" ForeColor="Black"></asp:textbox><br>
										<asp:regularexpressionvalidator id="validatorEmail" runat="server" ErrorMessage="��ĵ��������д���" ControlToValidate="txtEmail"
										ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:regularexpressionvalidator></FONT></td>
							</tr>
							<tr bgColor="#ffffff" width="75%">
								<td><font class="mfont">��ҳ:</font>
									<asp:textbox id="txtHomePage" runat="server" Width="260px" BorderStyle="Solid" BorderWidth="1px"
										Font-Names="����" Font-Size="X-Small" ForeColor="Black"></asp:textbox><br>
										<asp:regularexpressionvalidator id="validatorHomePage" runat="server" ErrorMessage="�����ҳ��ַ�д���" ControlToValidate="txtHomePage"
										ValidationExpression="http://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:regularexpressionvalidator></FONT></td>
							</tr>
							<tr bgColor="#ffffff" width="75%">
								<td style="WIDTH: 366px"><b>���ݣ�<b><br>
											<asp:textbox id="txtContent" runat="server" Width="301px" BorderStyle="Solid" BorderWidth="1px"
												Font-Names="����" Font-Size="X-Small" ForeColor="Black" TextMode="MultiLine" Height="130px"></asp:textbox><br>
											<asp:requiredfieldvalidator id="validatorContent" runat="server" ErrorMessage="�㻹û�����أ�" ControlToValidate="txtContent"></asp:requiredfieldvalidator></FONT></b></b></td>
							</tr>
							<tr bgColor="#ffffff">
								<td style="WIDTH: 366px"><asp:button id="butOk" runat="server" Text="��д����"></asp:button>&nbsp;&nbsp;
									<input type="reset" value="������д" name="reset">&nbsp;&nbsp; <INPUT onclick="document.location.href = 'view.aspx'" type="button" value="�ص�ǰҳ">
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
