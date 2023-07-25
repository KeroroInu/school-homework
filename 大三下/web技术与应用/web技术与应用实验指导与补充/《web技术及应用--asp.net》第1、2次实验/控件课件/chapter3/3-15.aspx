<script Language="VB" runat="server">
	Sub Page_Load(Sender As Object, E As EventArgs)     
		Dim mycity() As String={"北京","上海","广州"}    '定义数组
		city.DataSource=mycity                         '指定数据源
		city.DataBind                                  '执行绑定
	End Sub
</script>
<html>
<body>
	<form runat="server">
		<asp:DropDownList id="city" runat="server" />
	</form>
</body>
</html>
