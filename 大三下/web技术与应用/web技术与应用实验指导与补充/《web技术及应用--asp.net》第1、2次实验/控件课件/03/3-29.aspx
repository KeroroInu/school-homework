<%@ Page Language="C#" %>
<script language="C#" runat="server">
DateTime t=DateTime.Now;
void Page_load(Object sender, EventArgs e){
		Page.DataBind();
}
</script>
<form id="nform" runat="server">
Ŀǰ�����ڼ�ʱ�䣺<asp:Label id="NowTime" runat="server" Text=<%# t %>/><p>
<p></form>
