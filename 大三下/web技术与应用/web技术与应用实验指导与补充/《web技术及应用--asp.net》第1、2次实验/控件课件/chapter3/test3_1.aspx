<script runat="server">
Sub Button1_Click(sender As Object, e As EventArgs) 
  If Radio1.Checked = True Then
     message.text = radio1.value & "���±��������±���һ�����������򵥵��ĵ��Ļ������ı��༭����<br>���±������"



  ElseIf Radio2.Checked = True Then
     message.text = radio2.value
  ElseIf Radio3.Checked = true Then
     message.text = radio3.value
  End If 
End Sub
</script>
<html>
<body>
    <h3>�򵥵� HtmlInputRadioButton ʾ��</h3>
    <form runat=server>
        <input type="radio" id="Radio1" value="1" runat="server" />ѡ�� 1<br>
        <input type="radio" id="Radio2" value="2" runat="server" />ѡ�� 2<br>
        <input type="radio" id="Radio3" value="3" runat="server"/>ѡ�� 3<p>
        <input type=button id="Button1" value="ȷ��" OnServerClick="Button1_Click" runat=server>
        <br>
        <asp:label id="message" runat="server" />
        <p>
    </form>
</body>
</html>



