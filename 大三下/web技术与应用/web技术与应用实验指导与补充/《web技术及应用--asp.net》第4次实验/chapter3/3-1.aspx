<script Language="C#" runat="server">
	private void Page_Load(object sender,EventArgs e)         //ҳ������ʱ�������¼�
	{
		message.Text="��ӭ��";									//������ҳ��ʱ�����Ը�ֵ
	}
	private void  Enter_Click(object sender,EventArgs e)       //����ȷ����ťʱ�������¼�
	{
		message.Text = username.Text + "����";            //����ȷ����ťʱ�����Ը�ֵ
	}
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
