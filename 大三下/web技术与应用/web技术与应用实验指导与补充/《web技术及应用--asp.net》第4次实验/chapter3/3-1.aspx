<script Language="C#" runat="server">
	private void Page_Load(object sender,EventArgs e)         //页面启动时触发该事件
	{
		message.Text="欢迎您";									//启动该页面时给属性赋值
	}
	private void  Enter_Click(object sender,EventArgs e)       //单击确定按钮时触发该事件
	{
		message.Text = username.Text + "您好";            //单击确定按钮时给属性赋值
	}
</script>
<html>
<body>
	<form runat="server">
		请输入您的姓名：
		<asp:Textbox id="username" runat="server" /> 
		<asp:Button id="enter" Text="确定" onClick="Enter_Click" runat="server" />
		<p>
		<asp:Label id="message" runat="server"/>
	</form>
</body>
</html>
