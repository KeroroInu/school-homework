<script Language="VB" runat="server">
	Sub city_change(Sender As Object, E As EventArgs)        '变化选项时触发事件
		message.Text = "您选择了" & city.SelectedItem.Text    '即时显示选择城市
	End Sub
</script>
<html>
<body>
	<form runat="server">
	<asp:DropDownList id="city" AutoPostBack="True" OnSelectedIndexChanged="city_change" runat="server">
			<asp:ListItem>北京</asp:ListItem>
			<asp:ListItem>上海</asp:ListItem>
			<asp:ListItem>广州</asp:ListItem>
		</asp:DropDownList>
		<p><asp:label id="message" runat="server"/>
	</form>
</body>
</html>
