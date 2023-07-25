<script Language="VB" runat="server">
	Sub Page_Load(Sender As Object, E As EventArgs)     
		Dim objLabel As New Label              '注意使用New关键字创建对象实例
		objLabel.ID="message"                  '设置控件名称
		objLabel.Text="这是动态产生的Label控件"   '给控件属性赋值
		Page.Controls.Add(objLabel)            '将控件添加到本页面，也可以添加到Panel控件中
	End Sub
</script>
<html>
<body>
	<h4 align="center">动态产生控件示例</h4>
</body>
</html>
