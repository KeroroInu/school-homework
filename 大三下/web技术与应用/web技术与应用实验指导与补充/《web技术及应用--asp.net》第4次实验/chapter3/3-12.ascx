<script language="C#" runat="server">
	private void Enter_Click(object sender,EventArgs e)
	{
	      message.Text = "�û���Ϊ " + user_name.Text + "<br>";
	      message.Text = message.Text + "�û�����Ϊ " + password.Text + "<br>";
	}
</script>
<form runat="server">
<table>
	<tr>
		<td>�û���:</td>
		<td><asp:TextBox id="user_name" runat="server"/></td>
	</tr><tr>
		<td>�û�����:</td>
		<td><asp:TextBox id="password" TextMode="password" runat="server"/></td>
	</tr><tr>
		<td></td>
		<td><asp:Button Text=" ȷ �� " onClick="Enter_Click" runat="server"/></td>
	</tr><tr>
		<td></td>
		<td><asp:Label id="message" runat="server"/></td>
	</tr>
</table>
</form>

