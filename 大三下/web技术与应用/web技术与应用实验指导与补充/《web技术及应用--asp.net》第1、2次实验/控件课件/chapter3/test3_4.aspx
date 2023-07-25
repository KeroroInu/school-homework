<script language="VB" runat="server">
   Sub Button1_Click(sender As Object, e As EventArgs) 
	  If RadioButtonList1.SelectedIndex > -1 Then
		  Label1.Text = "您选择了：" & RadioButtonList1.SelectedItem.text
	  End If
   End Sub
</script>
<html>
<body>
    <h3><font face="宋体">RadioButtonList 示例</font></h3>
    <form runat=server>
        <asp:RadioButtonList id=RadioButtonList1 RepeatLayout="table" RepeatDirection="Vertical" runat="server">
            <asp:ListItem>项 1</asp:ListItem>
            <asp:ListItem>项 2</asp:ListItem>
            <asp:ListItem>项 3</asp:ListItem>
            <asp:ListItem>项 4</asp:ListItem>
            <asp:ListItem>项 5</asp:ListItem>
            <asp:ListItem>项 6</asp:ListItem>
        </asp:RadioButtonList>
        <p>
        <asp:Button id=Button1 Text="提交" onclick="Button1_Click" runat="server"/>
        <p>
        <asp:Label id=Label1 font-name="宋体" font-size="9pt" runat="server"/>
    </form>
</body>
</html>

