<% @ Page Language="C#" %>
<script language="C#" runat="server">
void txtUid_TextChanged(Object sender, EventArgs e){
   lblUid.Text = txtUid.Text;
}
</script>
<form runat="server">
  <b>�û���:</b>
  <asp:TextBox id="txtUid"
        
       OnTextChanged="txtUid_TextChanged"
       runat="server"/><br>
   <b>�����û���Ϊ:</b>
   <asp:Label id="lblUid"
        runat="server"/>
</form>
