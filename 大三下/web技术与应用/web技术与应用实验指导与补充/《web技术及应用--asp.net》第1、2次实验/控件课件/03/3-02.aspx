<% @ Page Language="C#" %>
<script language="C#" runat="server">
protected void Page_Load(Object sender, EventArgs e){
   if (!IsPostBack) {
      lblMessage.Text = "��һ�η��ʣ�";
   }
   else{
      lblMessage.Text = "ҳ�汻�ύ�ˣ�";  
   }
}
void SubmitBtn_Click(Object sender, EventArgs e) {
}
</script>
<form runat=server>
   <asp:button id="btnSubmit"
        Text="�ύ" 
        OnClick="SubmitBtn_Click" 
        runat="server" />       
   <asp:Label id="lblMessage" 
           runat="server"/>
</form>
