<% @ Page Language="C#" %>
<script language="C#" runat="server">
protected void Button_Click(object sender, EventArgs e){
   Message.Text = "��������ǣ�" + Name.Text;
}
</script>
<form method="post" runat="server">
   ������<asp:textbox id="Name" runat="server" />
   <asp:button text="ȷ��" onclick="Button_Click" runat="server" />
<br><br><br>
<asp:label id="Message" runat="server" />
</form>
