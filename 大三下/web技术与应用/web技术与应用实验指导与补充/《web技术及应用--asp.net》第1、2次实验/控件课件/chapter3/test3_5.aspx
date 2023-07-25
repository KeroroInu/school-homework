<script language="VB" runat="server">
	Sub SubmitBtn_Click(sender As Object, e As EventArgs)
		Label1.Text="You chose: " & DropDown1.SelectedItem.Text
	End Sub
</script>
<html>
<body>
<h3><font face="Verdana">下拉列表框</font></h3>
<form runat=server>
	<asp:DropDownList id=DropDown1 runat="server">
		<asp:ListItem value="1">Item 1</asp:ListItem>
		<asp:ListItem value="2">Item 2</asp:ListItem>
		<asp:ListItem value="3">Item 3</asp:ListItem>
		<asp:ListItem value="4">Item 4</asp:ListItem>
		<asp:ListItem value="5">Item 5</asp:ListItem>
		<asp:ListItem value="6">Item 6</asp:ListItem>
	</asp:DropDownList>
	<asp:button text="Submit" OnClick="SubmitBtn_Click" runat=server/>
	<p>
	<asp:Label id=Label1 font-name="Verdana" font-size="10pt" runat="server"/>
</form>
</body>
</html>
