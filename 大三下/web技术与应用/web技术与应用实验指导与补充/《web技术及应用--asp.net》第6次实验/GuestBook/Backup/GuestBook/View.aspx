<%@ Page CodeBehind="View.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="GuestBook.View" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
	<HEAD>
		<title>欢迎进入留言区</title>
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
										<font color="#ccff00">共有
											<asp:label id="lbRecordCount" runat="server"></asp:label>
											条留言&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前页为
											<asp:label id="lbCurrentPage" runat="server"></asp:label>/
											<asp:label id="lbPageCount" runat="server"></asp:label>页 </font>
									</td>
									<td width="70">
										<A href="Guest.aspx"><font color="#ccff00">签写留言 </font></A>
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
														<!-- 头像 -->
														<td width="150" rowspan="3" bgcolor="#ffffff" align="center">
															<%# "<img src=" + DataBinder.Eval(Container.DataItem,"Photo") + ">" %>
														</td>
														<!-- 来自 未知位置! 的帅哥 XXX 于 2006-8-15 21:46:39 时的留言！ -->
														<td valign="middle" class="mframe-t-mid">来自
															<%# GetAddress((DataBinder.Eval(Container.DataItem,"ip")).ToString()) %>
															的<%# DataBinder.Eval(Container.DataItem,"Sex") %>
															<font color="#ff0000">
																<%# DataBinder.Eval(Container.DataItem,"Name") %>
															</font>于
															<%# DataBinder.Eval(Container.DataItem,"Date") %>
															时的留言！</td>
													</tr>
													<!-- 留言内容 -->
													<tr bgcolor="#ffffff">
														<td height="130" valign="top" bgcolor="#ffffff"><p><font color="#000000"><br>
																	<%# DataBinder.Eval(Container.DataItem,"Content").ToString().Replace("\r","<br>").Replace("\n","") %>
															</p>
														</td>
													</tr>
													<!-- 电子邮箱 个人主页 QICQ 删除留言 版主回复 -->
													<tr>
														<td valign="middle">
															<!--class="mframe-t-mid"><span class="mframe-t-text">-->
															<%# "<a href=mailto:" + DataBinder.Eval(Container.DataItem,"Email") + ">电子邮箱</a>" %>
															&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
															<%# "<a href=" + DataBinder.Eval(Container.DataItem,"HomePage") + ">个人主页</a>" %>
															&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
															<%# "<a target=_blank href=http://search.tencent.com/cgi-bin/friend/user_show_info?ln=" 
															+ DataBinder.Eval(Container.DataItem,"Oicq") + ">" %>
															<%# "OICQ" %>
															</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
															<asp:LinkButton id="DelButton" runat="server" OnCommand="DelOrRep_Click" CommandName="Del" CommandArgument= '<%# DataBinder.Eval(Container.DataItem,"ID") %>'>删除留言</asp:LinkButton>
															&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
															<asp:LinkButton ID="RepButton" Runat=server OnCommand="DelOrRep_Click" CommandName="Rep" CommandArgument= '<%# DataBinder.Eval(Container.DataItem,"ID") %>'>版主回复</asp:LinkButton>
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
							<P align="right"><asp:linkbutton id="butPrev" runat="server" CausesValidation="False">前页</asp:linkbutton>&nbsp;&nbsp;
								<asp:linkbutton id="butNext" runat="server" CausesValidation="False">后页</asp:linkbutton>&nbsp;
								<asp:dropdownlist id="dlsPageIndex" runat="server" Font-Size="X-Small" Font-Names="宋体" AutoPostBack="True"></asp:dropdownlist>
							</P>
						</td>
					</tr>
				</TBODY></table>
		</form>
		<br>
	</body>
</HTML>
