<script runat="server">
	Sub Button1_Click(sender As Object, e As EventArgs) 
	   message.text=message.text & country.value
	End Sub
</script>
<html>
<body>
    <h3>�򵥵� HtmlInputRadioButton ʾ��</h3>
    <form runat=server>
		<select id="country" runat="server">
			 <option value="china">�й�</option>
			 <option value="America">����</option>
		</select>
        <input type=button id="Button1" value="ȷ��" OnServerClick="Button1_Click" runat=server>
        <asp:label id="message" runat="server" />
        <p>
    </form>
</body>
</html>



