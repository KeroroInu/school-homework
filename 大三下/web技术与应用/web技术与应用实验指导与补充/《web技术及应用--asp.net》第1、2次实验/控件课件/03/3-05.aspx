<% @ Page Language="C#" %>
<script language="C#" runat="server">
void SubmitBtn_Click(Object sender, EventArgs e) {
   Message.InnerHtml="<h4>������ĸ�����Ϣ��:</h4>";
   Message.InnerHtml+="<b>����</b>��"+Name.Value+"<br>";
   if (Male.Checked) Message.InnerHtml+="<b>�Ա�</B>����<br>";
   if (Female.Checked) Message.InnerHtml+="<b>�Ա�</B>��Ů<br>";
   Message.InnerHtml+="<b>���ã�</b>";
   if(Singing.Checked) Message.InnerHtml+="����&nbsp;&nbsp;";
   if(Dancing.Checked) Message.InnerHtml+="����&nbsp;&nbsp;";
   if(Sleeping.Checked) Message.InnerHtml+="˯��&nbsp;&nbsp;";
   Message.InnerHtml += "<br><b>��ַ��</b>" + selAddr.Value;
   Message.InnerHtml+="<br><b>��飺</b>"+Brief.Value;  
}
</script>
<h2>����д���ĸ�����Ϣ��</h2><hr>
<form method=post runat="server">
����:<input id="Name" type=text maxlength=20 runat="server" /><br>
�Ա�:<input id="Male" type="radio" name="Sex" checked runat="server" />��
	<input id="Female" type="radio" name="Sex" runat="server" />Ů<br>
����:
<input id="Singing" type="checkbox" runat="server" />����
<input id="Dancing" type="checkbox" runat="server" />����
<input id="Sleeping" type="checkbox" runat="server" />˯��<br>

��ַ��<select id="selAddr" runat="server">
    <option Value="�Ϻ�">�Ϻ�</option>
    <option Value="����">����</option>
</select><br>
���:<textarea id="Brief" cols=50 rows=4 runat="server" /><br>
	<input type="submit" value="�ύ" 
    OnServerClick="SubmitBtn_Click" runat="server" />
<input type="reset" value="����" runat="server" />
<span id="Message" runat="server" />
</form>