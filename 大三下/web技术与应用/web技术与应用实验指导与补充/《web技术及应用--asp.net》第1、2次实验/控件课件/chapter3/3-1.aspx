<script Language="VB" runat="server">
	Sub Page_load(Sender As Object,E As EventArgs)         '页面启动时触发该事件
		message.text="欢迎您"                           '启动该页面时给属性赋值
	End Sub
	Sub Enter_Click(Sender As Object, E As EventArgs)      '单击确定按钮时触发该事件
		Message.Text = username.Text & "您好"            '单击确定按钮时给属性赋值
	End Sub
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
