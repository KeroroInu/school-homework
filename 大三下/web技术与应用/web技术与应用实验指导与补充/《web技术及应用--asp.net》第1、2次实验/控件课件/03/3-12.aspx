<% @ Page Language="C#" %>
<script language="C#" runat="server">
void SubmitBtn_Click(Object sender, EventArgs e) 
{
    Message.Text="<h4>�����Ա�Ͱ�����:</h4>"; 
    if (Male.Checked) Message.Text+="<b>�Ա�</B>����<br>";
    if (Female.Checked) Message.Text+="<b>�Ա�</B>��Ů<br>";
    Message.Text+="<b>���ã�</b>";
    if(Football.Checked) Message.Text+="����&nbsp;&nbsp;";
    if(Tour.Checked) Message.Text+="����&nbsp;&nbsp;";
    if(Chess.Checked) Message.Text+="Χ��&nbsp;&nbsp;";
}
</script>
<h2>ʹ�õ�ѡ�򡢸�ѡ��ؼ�</h2><hr>
<form runat="server">
<b>�Ա�:</b><asp:RadioButton id="Male"
       Text="��"
       GroupName="Sex"
       Checked="true"
       runat="server"/>
<asp:RadioButton id="Female"
       Text="Ů"
       GroupName="Sex"
       runat="server"/>
<br><b>����:</b><asp:CheckBox id="Football"
       Text="����"
       runat="server" />
<asp:CheckBox id="Tour"
       Text="����"
       runat="server" />
<asp:CheckBox id="Chess"
       Text="Χ��"
       runat="server" />
<asp:Button id="Submit"
       Text="�ύ" 
       OnClick="SubmitBtn_Click"
       runat="server" />
<asp:Label id="Message" runat="server" />
</form>
