<% @ Page Language="C#" %>
<script language="C#" runat="server">
void Image_Changed(Object Sender, EventArgs e) {
  lblUid.Text = lstAddr.SelectedItem.Value;
}
</script>
<form runat="server">
   选择你要去的城市：
   <asp:DropDownList id="lstAddr" 
              AutoPostBack="True"
              OnSelectedIndexChanged="Image_Changed"
              runat="server">
      <asp:ListItem value="北京" selected="true">北京</asp:ListItem>
      <asp:ListItem value="上海">上海</asp:ListItem>
   </asp:DropDownList>
   <asp:Label id="lblUid" runat="server"/>
</form>
