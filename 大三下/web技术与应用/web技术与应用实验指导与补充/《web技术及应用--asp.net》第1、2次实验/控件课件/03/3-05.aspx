<% @ Page Language="C#" %>
<script language="C#" runat="server">
void SubmitBtn_Click(Object sender, EventArgs e) {
   Message.InnerHtml="<h4>您输入的个人信息是:</h4>";
   Message.InnerHtml+="<b>姓名</b>："+Name.Value+"<br>";
   if (Male.Checked) Message.InnerHtml+="<b>性别</B>：男<br>";
   if (Female.Checked) Message.InnerHtml+="<b>性别</B>：女<br>";
   Message.InnerHtml+="<b>爱好：</b>";
   if(Singing.Checked) Message.InnerHtml+="唱歌&nbsp;&nbsp;";
   if(Dancing.Checked) Message.InnerHtml+="跳舞&nbsp;&nbsp;";
   if(Sleeping.Checked) Message.InnerHtml+="睡觉&nbsp;&nbsp;";
   Message.InnerHtml += "<br><b>地址：</b>" + selAddr.Value;
   Message.InnerHtml+="<br><b>简介：</b>"+Brief.Value;  
}
</script>
<h2>请填写您的个人信息：</h2><hr>
<form method=post runat="server">
姓名:<input id="Name" type=text maxlength=20 runat="server" /><br>
性别:<input id="Male" type="radio" name="Sex" checked runat="server" />男
	<input id="Female" type="radio" name="Sex" runat="server" />女<br>
爱好:
<input id="Singing" type="checkbox" runat="server" />唱歌
<input id="Dancing" type="checkbox" runat="server" />跳舞
<input id="Sleeping" type="checkbox" runat="server" />睡觉<br>

地址：<select id="selAddr" runat="server">
    <option Value="上海">上海</option>
    <option Value="北京">北京</option>
</select><br>
简介:<textarea id="Brief" cols=50 rows=4 runat="server" /><br>
	<input type="submit" value="提交" 
    OnServerClick="SubmitBtn_Click" runat="server" />
<input type="reset" value="重置" runat="server" />
<span id="Message" runat="server" />
</form>