<% @Control className="UcLogin" %>
<script language="C#" runat="server">
void RegBtn_Click(Object sender, EventArgs e){
   Message.Text = "<br>";
   Message.Text += "<b>�û�����:</b>"+Name.Text+"<br>";
   Message.Text += "<b>������:</b>"+Pass.Text+"<br>";
}
</script>
<b>�û���:</b><ASP:TextBox id="Name" runat="server"/>
<b>����:</b>
<ASP:TextBox id="Pass" TextMode="Password" runat="server"/>
<ASP:Button Text="ע��" OnClick="RegBtn_Click" runat="server"/>
<ASP:Label id="Message" runat="server"/>
