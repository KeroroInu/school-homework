<script Language="VB" runat="server">
	Sub Page_Load(Sender As Object, E As EventArgs)     
		Dim objLabel As New Label              'ע��ʹ��New�ؼ��ִ�������ʵ��
		objLabel.ID="message"                  '���ÿؼ�����
		objLabel.Text="���Ƕ�̬������Label�ؼ�"   '���ؼ����Ը�ֵ
		Page.Controls.Add(objLabel)            '���ؼ���ӵ���ҳ�棬Ҳ������ӵ�Panel�ؼ���
	End Sub
</script>
<html>
<body>
	<h4 align="center">��̬�����ؼ�ʾ��</h4>
</body>
</html>
