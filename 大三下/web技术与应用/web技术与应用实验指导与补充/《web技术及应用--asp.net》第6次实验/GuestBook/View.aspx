<%@ Page CodeBehind="View.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="GuestBook.View" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
	<HEAD>
		<title>��ӭ����������</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
	</HEAD>
	<body topMargin="0" marginwidth="0" marginheight="0">
		<form runat="server">
			<table class="twidth" cellSpacing="0" cellPadding="0" align="center" border="0">
				<TBODY>
					<tr>
						<td>
							<table cellSpacing="0" cellPadding="2" width="100%" border="0">
								<tr bgColor="#000000">
									<td>
										<font color="#ccff00">����
											<asp:label id="lbRecordCount" runat="server"></asp:label>
											������&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ǰҳΪ
											<asp:label id="lbCurrentPage" runat="server"></asp:label>/
											<asp:label id="lbPageCount" runat="server"></asp:label>ҳ </font>
									</td>
									<td width="70">
										<A href="Guest.aspx"><font color="#ccff00">ǩд���� </font></A>
									</td>
								</tr>
							</table>
							<asp:repeater id="message" runat="server">
								<ItemTemplate>
									<table width="100%" border="0" cellpadding="7" cellspacing="1" bgcolor="#003399">
										<tr bgcolor="#ffffff">
											<td width="74%" colspan="2">
												<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#999999">
													<tr>
														<!-- ͷ�� -->
														<td width="150" rowspan="3" bgcolor="#ffffff" align="center">
															<%# "<img src=" + DataBinder.Eval(Container.DataItem,"Photo") + ">" %>
														</td>
														<!-- ���� δ֪λ��! ��˧�� XXX �� 2006-8-15 21:46:39 ʱ�����ԣ� -->
														<td valign="middle" class="mframe-t-mid">����
															<%# GetAddress((DataBinder.Eval(Container.DataItem,"ip")).ToString()) %>
															��<%# DataBinder.Eval(Container.DataItem,"Sex") %>
															<font color="#ff0000">
																<%# DataBinder.Eval(Container.DataItem,"Name") %>
															</font>��
															<%# DataBinder.Eval(Container.DataItem,"Date") %>
															ʱ�����ԣ�</td>
													</tr>
													<!-- �������� -->
													<tr bgcolor="#ffffff">
														<td height="130" valign="top" bgcolor="#ffffff"><p><font color="#000000"><br>
																	<%# DataBinder.Eval(Container.DataItem,"Content").ToString().Replace("\r","<br>").Replace("\n","") %>
															</p>
														</td>
													</tr>
													<!-- �������� ������ҳ QICQ ɾ������ �����ظ� -->
													<tr>
														<td valign="middle">
															<!--class="mframe-t-mid"><span class="mframe-t-text">-->
															<%# "<a href=mailto:" + DataBinder.Eval(Container.DataItem,"Email") + ">��������</a>" %>
															&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
															<%# "<a href=" + DataBinder.Eval(Container.DataItem,"HomePage") + ">������ҳ</a>" %>
															&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
															<%# "<a target=_blank href=http://search.tencent.com/cgi-bin/friend/user_show_info?ln=" 
															+ DataBinder.Eval(Container.DataItem,"Oicq") + ">" %>
															<%# "OICQ" %>
															</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
															<asp:LinkButton id="DelButton" runat="server" OnCommand="DelOrRep_Click" CommandName="Del" CommandArgument= '<%# DataBinder.Eval(Container.DataItem,"ID") %>'>ɾ������</asp:LinkButton>
															&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
															<asp:LinkButton ID="RepButton" Runat=server OnCommand="DelOrRep_Click" CommandName="Rep" CommandArgument= '<%# DataBinder.Eval(Container.DataItem,"ID") %>'>�����ظ�</asp:LinkButton>
														</td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</ItemTemplate>
								<SeparatorTemplate>
									<table width="100%" border="0" bgcolor="#ffffff">
										<tr bgcolor="#ffffff">
											<td height="10">
										</tr>
									</table>
								</SeparatorTemplate>
							</asp:repeater>
							<P align="right"><asp:linkbutton id="butPrev" runat="server" CausesValidation="False">ǰҳ</asp:linkbutton>&nbsp;&nbsp;
								<asp:linkbutton id="butNext" runat="server" CausesValidation="False">��ҳ</asp:linkbutton>&nbsp;
								<asp:dropdownlist id="dlsPageIndex" runat="server" Font-Size="X-Small" Font-Names="����" AutoPostBack="True"></asp:dropdownlist>
							</P>
						</td>
					</tr>
				</TBODY></table>
		</form>
		<br>
	</body>
</HTML>
