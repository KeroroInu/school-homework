<% @ Page Language="C#" %>
<script language="C#" runat="server">
void Page_Load(Object sender, EventArgs e){
   // ���һ����ǩ
   Label lbl=new Label();
   lbl.Text="��ã�";
   lbl.ID="Label1";
   Panel1.Controls.Add(lbl);
   Panel1.Controls.Add(new LiteralControl("<br><br>"));
}
</script>
<form runat=server>
   <asp:Panel id="Panel1" runat="server"
              BackColor="yellow"
              HorizontalAlign="Center"
              Height="60px"
              Width="300px">
   </asp:Panel>
</form>
