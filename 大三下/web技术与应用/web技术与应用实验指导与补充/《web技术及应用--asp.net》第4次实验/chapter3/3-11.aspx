<%@ Register TagPrefix="myControl" TagName="Login" Src="3-10.ascx" %>
<Script Language="C#" Runat="server">
  private void Page_Load(object sender,EventArgs e)
  {
      message.Text = "�û���Ϊ " + MyLogin.userID + "<br>";
      message.Text = message.Text + "�û�����Ϊ " + MyLogin.UserPassword + "<br>";
  }
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

