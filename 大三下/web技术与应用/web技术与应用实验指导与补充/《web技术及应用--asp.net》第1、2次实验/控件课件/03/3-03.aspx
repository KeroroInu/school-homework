<% @ Page Language="C#" %>
<script language="C#" runat="server">
void Page_Load(object sender, EventArgs e) { 
   anchor1.InnerText="北京大学";
   anchor1.HRef="http://www.pku.edu.cn";
   anchor1.Target="_blank";  // 在新的无标题窗口加载链接
}
</script>
<a id="anchor1" runat="server"></a>
