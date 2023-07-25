<% @ Page Language="C#" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<script runat="server">
void Page_Load(Object sender, EventArgs e) {
	SqlConnection Conn;
	Conn=new SqlConnection("server=127.0.0.1;database=pubs;uid=sa;pwd=''"); 
	Conn.Open();
	Message.Text=Conn.State.ToString();
	Conn.Close();
}
</script>
<asp:Label id="Message" runat="server" />
