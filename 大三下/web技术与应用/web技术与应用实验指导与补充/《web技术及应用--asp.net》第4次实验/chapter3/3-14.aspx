<script Language="C#" runat="server">
	private void city_change(object sender,EventArgs e)        //�仯ѡ��ʱ�����¼�
	{
		message.Text = "��ѡ����" & city.SelectedItem.Text;    //��ʱ��ʾѡ�����
	}
</script>
<html>
<body>
	<form runat="server">
	<asp:DropDownList id="city" AutoPostBack="True" OnSelectedIndexChanged="city_change" runat="server">
			<asp:ListItem>����</asp:ListItem>
			<asp:ListItem>�Ϻ�</asp:ListItem>
			<asp:ListItem>����</asp:ListItem>
		</asp:DropDownList>
		<p><asp:label id="message" runat="server"/>
	</form>
</body>
</html>
