<script language="VB" runat="server">
   Sub Button1_Click(sender As Object, e As EventArgs) 
	  If Check1.Checked=true Then
		 message.text = check1.value
	  Else 
		 message.text = "Check1 δѡ�У�"
	  End If
	  If Check2.Checked=true Then
		 message.text =  message.text & "," & check2.value
	  Else 
		 message.text = message.text & "Check2 δѡ�У�"
	  End If

   End Sub
</script>
<html>
<body>
    <h3>HtmlInputCheckBox ʾ��</h3>
    <form runat=server>
        <input id="Check1" type=checkbox value="����" runat="server"> ����&nbsp;&nbsp;
        <input id="Check2" type=checkbox value="�����" runat="server">����� 
		<p><input type=button id="Button1" value="ȷ��" OnServerClick="Button1_Click" runat="server">
        <p><asp:label id="message" runat="server" />
    </form>
</body>
</html>



