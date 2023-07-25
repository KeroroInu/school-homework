<script runat="server">
Sub Button1_Click(sender As Object, e As EventArgs) 
  If Radio1.Checked = True Then
     message.text = radio1.value & "记事本概述记事本是一个用来创建简单的文档的基本的文本编辑器。<br>记事本最常用来"



  ElseIf Radio2.Checked = True Then
     message.text = radio2.value
  ElseIf Radio3.Checked = true Then
     message.text = radio3.value
  End If 
End Sub
</script>
<html>
<body>
    <h3>简单的 HtmlInputRadioButton 示例</h3>
    <form runat=server>
        <input type="radio" id="Radio1" value="1" runat="server" />选项 1<br>
        <input type="radio" id="Radio2" value="2" runat="server" />选项 2<br>
        <input type="radio" id="Radio3" value="3" runat="server"/>选项 3<p>
        <input type=button id="Button1" value="确定" OnServerClick="Button1_Click" runat=server>
        <br>
        <asp:label id="message" runat="server" />
        <p>
    </form>
</body>
</html>



