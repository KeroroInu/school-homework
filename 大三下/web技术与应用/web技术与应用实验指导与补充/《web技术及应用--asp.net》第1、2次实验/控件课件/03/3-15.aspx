<% @ Page Language="C#" %>
<script language="C#" runat="server">
void Page_Load(Object sender, EventArgs e){
   Literal literal1=new Literal();
   literal1.Text="<b>ÄãºÃ£¡</b>";
   PlaceHolder1.Controls.Add(literal1);
   Button button1=new Button();
   button1.Text="°´Å¥";
   PlaceHolder1.Controls.Add(button1);
}
</script>
<form runat="server">
   <asp:PlaceHolder id="PlaceHolder1" 
        runat="server"/>
</form>
