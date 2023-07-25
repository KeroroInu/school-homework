<% @ Page Language="C#" %>
<script language="C#" runat="server">
public string G(int counter){
   string myimage="";
   string S = counter.ToString();  
   for(int i = 0 ;i<=S.Length-1;i++)  {
      myimage = myimage + "<IMG SRC=" + S.Substring(i,1) + ".gif>";
      }
   return myimage;
}
</script>
<%
Application.Lock();
Application["count"] =Convert.ToInt32(Application["count"]) + 1;
Application.UnLock();
%>
您是本站第 <%=G(Convert.ToInt32((Application["count"])))%> 位贵宾！
