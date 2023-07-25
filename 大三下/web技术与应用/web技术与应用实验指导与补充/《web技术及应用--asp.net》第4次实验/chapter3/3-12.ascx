<script language="C#" runat="server">
	private void Enter_Click(object sender,EventArgs e)
	{
	      message.Text = "用户名为 " + user_name.Text + "<br>";
	      message.Text = message.Text + "用户密码为 " + password.Text + "<br>";
	}
</script>
<form runat="server">
<table>
	<tr>
		<td>用户名:</td>
		<td><asp:TextBox id="user_name" runat="server"/></td>
	</tr><tr>
		<td>用户密码:</td>
		<td><asp:TextBox id="password" TextMode="password" runat="server"/></td>
	</tr><tr>
		<td></td>
		<td><asp:Button Text=" 确 定 " onClick="Enter_Click" runat="server"/></td>
	</tr><tr>
		<td></td>
		<td><asp:Label id="message" runat="server"/></td>
	</tr>
</table>
</form>

