<% @ Page Language="C#" %>
<script language="C#" runat="server">
protected void Page_Load(Object sender, EventArgs e){
   if (!IsPostBack) {
      lblMessage.Text = "第一次访问！";
   }
   else{
      lblMessage.Text = "页面被提交了！";  
   }
}
void SubmitBtn_Click(Object sender, EventArgs e) {
}
</script>
<form runat=server>
   <asp:button id="btnSubmit"
        Text="提交" 
        OnClick="SubmitBtn_Click" 
        runat="server" />       
   <asp:Label id="lblMessage" 
           runat="server"/>
</form>
