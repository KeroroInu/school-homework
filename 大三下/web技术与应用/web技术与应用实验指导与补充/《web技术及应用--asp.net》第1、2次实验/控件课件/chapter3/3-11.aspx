<%@ Register TagPrefix="myControl" TagName="Login" Src="3-10.ascx" %>
<Script Language="VB" Runat="server">
  Sub Page_Load(Sender As Object, E As EventArgs)
      message.Text = "�û���Ϊ " & MyLogin.UserId & "<br>"
      message.Text = message.Text & "�û�����Ϊ " & MyLogin.UserPassword & "<br>"
  End Sub
</Script>
<html>
<body >
	<h4 align="center">�û��ؼ�ʾ��</h4>
	<form runat="server">
		<myControl:Login id="MyLogin" runat="server"/>
		<p><asp:Label id="message" runat="server"/>  
	</form>
</body>
</html>

