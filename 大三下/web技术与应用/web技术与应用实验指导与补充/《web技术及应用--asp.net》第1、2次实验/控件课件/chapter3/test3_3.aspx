<script runat="server">
	Sub Button1_Click(sender As Object, e As EventArgs) 
	   message.text=message.text & country.value
	End Sub
</script>
<html>
<body>
    <h3>简单的 HtmlInputRadioButton 示例</h3>
    <form runat=server>
		<select id="country" runat="server">
			 <option value="china">中国</option>
			 <option value="America">美国</option>
		</select>
        <input type=button id="Button1" value="确定" OnServerClick="Button1_Click" runat=server>
        <asp:label id="message" runat="server" />
        <p>
    </form>
</body>
</html>



