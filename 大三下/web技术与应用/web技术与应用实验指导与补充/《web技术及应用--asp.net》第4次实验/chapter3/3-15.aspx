<script Language="C#" runat="server">
	private void Page_Load(object sender,EventArgs e)
	{
		
		strng[] mycity = {"北京","上海","广州"};  //定义数组
		city.DataSource=mycity ;                        //指定数据源
		city.DataBind();                                 //执行绑定
	}
</script>
<html>
<body>
	<form runat="server">
		<asp:DropDownList id="city" runat="server" />
	</form>
</body>
</html>
