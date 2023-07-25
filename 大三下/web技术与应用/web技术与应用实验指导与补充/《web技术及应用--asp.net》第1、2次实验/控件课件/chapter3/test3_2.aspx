<script language="VB" runat="server">
   Sub Button1_Click(sender As Object, e As EventArgs) 
	  If Check1.Checked=true Then
		 message.text = check1.value
	  Else 
		 message.text = "Check1 未选中！"
	  End If
	  If Check2.Checked=true Then
		 message.text =  message.text & "," & check2.value
	  Else 
		 message.text = message.text & "Check2 未选中！"
	  End If

   End Sub
</script>
<html>
<body>
    <h3>HtmlInputCheckBox 示例</h3>
    <form runat=server>
        <input id="Check1" type=checkbox value="旅游" runat="server"> 旅游&nbsp;&nbsp;
        <input id="Check2" type=checkbox value="计算机" runat="server">计算机 
		<p><input type=button id="Button1" value="确定" OnServerClick="Button1_Click" runat="server">
        <p><asp:label id="message" runat="server" />
    </form>
</body>
</html>



