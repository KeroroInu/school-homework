<% @ Page Language="C#" %>
<script language="C#" runat="server">
void Image_Changed(Object Sender, EventArgs e) {
  lblUid.Text = lstAddr.SelectedItem.Value;
}
</script>
<form runat="server">
   ѡ����Ҫȥ�ĳ��У�
   <asp:DropDownList id="lstAddr" 
              AutoPostBack="True"
              OnSelectedIndexChanged="Image_Changed"
              runat="server">
      <asp:ListItem value="����" selected="true">����</asp:ListItem>
      <asp:ListItem value="�Ϻ�">�Ϻ�</asp:ListItem>
   </asp:DropDownList>
   <asp:Label id="lblUid" runat="server"/>
</form>
