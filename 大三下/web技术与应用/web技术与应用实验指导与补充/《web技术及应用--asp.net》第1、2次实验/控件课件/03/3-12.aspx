<% @ Page Language="C#" %>
<script language="C#" runat="server">
void SubmitBtn_Click(Object sender, EventArgs e) 
{
    Message.Text="<h4>您的性别和爱好是:</h4>"; 
    if (Male.Checked) Message.Text+="<b>性别</B>：男<br>";
    if (Female.Checked) Message.Text+="<b>性别</B>：女<br>";
    Message.Text+="<b>爱好：</b>";
    if(Football.Checked) Message.Text+="足球&nbsp;&nbsp;";
    if(Tour.Checked) Message.Text+="旅游&nbsp;&nbsp;";
    if(Chess.Checked) Message.Text+="围棋&nbsp;&nbsp;";
}
</script>
<h2>使用单选框、复选框控件</h2><hr>
<form runat="server">
<b>性别:</b><asp:RadioButton id="Male"
       Text="男"
       GroupName="Sex"
       Checked="true"
       runat="server"/>
<asp:RadioButton id="Female"
       Text="女"
       GroupName="Sex"
       runat="server"/>
<br><b>爱好:</b><asp:CheckBox id="Football"
       Text="足球"
       runat="server" />
<asp:CheckBox id="Tour"
       Text="旅游"
       runat="server" />
<asp:CheckBox id="Chess"
       Text="围棋"
       runat="server" />
<asp:Button id="Submit"
       Text="提交" 
       OnClick="SubmitBtn_Click"
       runat="server" />
<asp:Label id="Message" runat="server" />
</form>
