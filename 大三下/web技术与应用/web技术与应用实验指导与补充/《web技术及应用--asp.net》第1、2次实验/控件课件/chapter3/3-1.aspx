<script Language="VB" runat="server">
	Sub Page_load(Sender As Object,E As EventArgs)         'ҳ������ʱ�������¼�
		message.text="��ӭ��"                           '������ҳ��ʱ�����Ը�ֵ
	End Sub
	Sub Enter_Click(Sender As Object, E As EventArgs)      '����ȷ����ťʱ�������¼�
		Message.Text = username.Text & "����"            '����ȷ����ťʱ�����Ը�ֵ
	End Sub
</script>
<html>
<body>
	<form runat="server">
		����������������
		<asp:Textbox id="username" runat="server" /> 
		<asp:Button id="enter" Text="ȷ��" onClick="Enter_Click" runat="server" />
		<p>
		<asp:Label id="message" runat="server"/>
	</form>
</body>
</html>
