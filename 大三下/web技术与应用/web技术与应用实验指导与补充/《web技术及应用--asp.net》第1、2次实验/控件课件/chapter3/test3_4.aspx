<script language="VB" runat="server">
   Sub Button1_Click(sender As Object, e As EventArgs) 
	  If RadioButtonList1.SelectedIndex > -1 Then
		  Label1.Text = "��ѡ���ˣ�" & RadioButtonList1.SelectedItem.text
	  End If
   End Sub
</script>
<html>
<body>
    <h3><font face="����">RadioButtonList ʾ��</font></h3>
    <form runat=server>
        <asp:RadioButtonList id=RadioButtonList1 RepeatLayout="table" RepeatDirection="Vertical" runat="server">
            <asp:ListItem>�� 1</asp:ListItem>
            <asp:ListItem>�� 2</asp:ListItem>
            <asp:ListItem>�� 3</asp:ListItem>
            <asp:ListItem>�� 4</asp:ListItem>
            <asp:ListItem>�� 5</asp:ListItem>
            <asp:ListItem>�� 6</asp:ListItem>
        </asp:RadioButtonList>
        <p>
        <asp:Button id=Button1 Text="�ύ" onclick="Button1_Click" runat="server"/>
        <p>
        <asp:Label id=Label1 font-name="����" font-size="9pt" runat="server"/>
    </form>
</body>
</html>

