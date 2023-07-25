<% @Control className="UcLogin" %>
<script language="C#" runat="server">
void RegBtn_Click(Object sender, EventArgs e){
   Message.Text = "<br>";
   Message.Text += "<b>用户名是:</b>"+Name.Text+"<br>";
   Message.Text += "<b>密码是:</b>"+Pass.Text+"<br>";
}
</script>
<b>用户名:</b><ASP:TextBox id="Name" runat="server"/>
<b>密码:</b>
<ASP:TextBox id="Pass" TextMode="Password" runat="server"/>
<ASP:Button Text="注册" OnClick="RegBtn_Click" runat="server"/>
<ASP:Label id="Message" runat="server"/>
