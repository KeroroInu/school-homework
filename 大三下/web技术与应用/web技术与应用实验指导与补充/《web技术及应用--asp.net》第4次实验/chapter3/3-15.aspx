<script Language="C#" runat="server">
	private void Page_Load(object sender,EventArgs e)
	{
		
		strng[] mycity = {"����","�Ϻ�","����"};  //��������
		city.DataSource=mycity ;                        //ָ������Դ
		city.DataBind();                                 //ִ�а�
	}
</script>
<html>
<body>
	<form runat="server">
		<asp:DropDownList id="city" runat="server" />
	</form>
</body>
</html>
