<script language="VB" runat="server">
	Sub Enter_Click(Sender As Object, E As EventArgs)
		If Page.IsValid=True Then    '���ͨ����֤������ʾ�й���Ϣ
			Dim strMessage As String                               
			strMessage="�û�����" & user_name.text                   
			strMessage=strMessage & "<br>�û����룺" & password1.text    
			strMessage=strMessage & "<br>�û����䣺" & age.text         
			strMessage=strMessage & "<br>�������䣺" & email.text      
			message.text=strMessage                                
		End IF
	End sub
</script>
<html>
<body>
    <h4 align="center">��֤�ؼ�ʾ��</h4>
    <form runat="server">
        �û�����<asp:textbox id="user_name" runat="server"/><br>
	<asp:RequiredFieldValidator id="require1" ControlToValidate="user_name" ErrorMessage="���������û���"  runat="server"/>
	<asp:RegularExpressionValidator id="Regular1" ControlToValidate="user_name" ValidationExpression="[a-zA-Z][a-zA-Z0-9_]{0,}" ErrorMessage="��1���ַ���������ĸ,��ֻ�ܰ�����ĸ�����ֺ��»���" runat="server" />

	<p>�û����룺<asp:textbox id="password1" textmode="Password" runat="server"/>
	<p>ȷ�����룺<asp:textbox id="password2" textmode="Password" runat="server"/>
	<asp:RequiredFieldValidator id="require2" ControlToValidate="password1" ErrorMessage="������������"  runat="server"/>
	<asp:CompareValidator id="Compare1" ControlToValidate="password1" ControlToCompare="password2" ErrorMessage="�����ȷ���������һ��" runat="server" />

	<p>�û����䣺<asp:textbox id="age" runat="server"/>
	<asp:RequiredFieldValidator id="require3" ControlToValidate="age" ErrorMessage="������������"  runat="server"/>
	<asp:RangeValidator id="Range1" ControlToValidate="age" MinimumValue="1" MaximumValue="150" ErrorMessage="����Ӧ����1��150֮��" Type="Integer" runat="server" />

	<p>�������䣺<asp:textbox id="email" columns="50" runat="server"/>
	<asp:RequiredFieldValidator id="require4" ControlToValidate="email" ErrorMessage="��������E-mail��ַ"  runat="server"/>
	<asp:RegularExpressionValidator id="Regular2" ControlToValidate="email" ValidationExpression=".{1,}@.{1,}\.[a-zA-Z]{2,3}" ErrorMessage="����������ȷ��E-mail��ַ" runat="server" />

		<p><asp:button id="Enter" text="�� ��"  onClick="Enter_Click" runat="server" />
		<p><asp:label id="message" runat="server"/>
    </form>
</body>
</html>
