<script Language="C#" runat="server">
	private void Page_Load(object sender,EventArgs e)
	{
		Label objLabel = new Label();              //ע��ʹ��New�ؼ��ִ�������ʵ��
		objLabel.ID="message";                  //���ÿؼ�����
		objLabel.Text="���Ƕ�̬������Label�ؼ�";   //���ؼ����Ը�ֵ
		Page.Controls.Add(objLabel) ;           //���ؼ���ӵ���ҳ�棬Ҳ������ӵ�Panel�ؼ���
	}
</script>
<html>
<body>
	<h4 align="center">��̬�����ؼ�ʾ��</h4>
</body>
</html>
