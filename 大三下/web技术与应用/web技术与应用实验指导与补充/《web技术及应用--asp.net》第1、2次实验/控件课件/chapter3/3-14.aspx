<script Language="VB" runat="server">
	Sub city_change(Sender As Object, E As EventArgs)        '�仯ѡ��ʱ�����¼�
		message.Text = "��ѡ����" & city.SelectedItem.Text    '��ʱ��ʾѡ�����
	End Sub
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
