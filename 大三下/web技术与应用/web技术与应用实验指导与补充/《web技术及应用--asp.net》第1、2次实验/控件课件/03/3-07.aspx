<% @ Page Language="C#" %>
<script language="C#" runat="server">
void txtUid_TextChanged(Object sender, EventArgs e){
   lblUid.Text = txtUid.Text;
}
</script>
<form runat="server">
  <b>用户名:</b>
  <asp:TextBox id="txtUid"
        
       OnTextChanged="txtUid_TextChanged"
       runat="server"/><br>
   <b>您的用户名为:</b>
   <asp:Label id="lblUid"
        runat="server"/>
</form>
