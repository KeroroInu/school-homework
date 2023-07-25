<% @ Page Language="C#" %>
<script language="C#" runat="server">
protected void Button_Click(object sender, EventArgs e){
   Message.Text = "你的名字是：" + Name.Text;
}
</script>
<form method="post" runat="server">
   姓名：<asp:textbox id="Name" runat="server" />
   <asp:button text="确定" onclick="Button_Click" runat="server" />
<br><br><br>
<asp:label id="Message" runat="server" />
</form>
