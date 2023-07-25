<%@ Page Language="C#" %>
<script language="C#" runat="server">
DateTime t=DateTime.Now;
void Page_load(Object sender, EventArgs e){
		Page.DataBind();
}
</script>
<form id="nform" runat="server">
目前的日期及时间：<asp:Label id="NowTime" runat="server" Text=<%# t %>/><p>
<p></form>
