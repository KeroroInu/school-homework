<script Language="VB" runat="server">
	Sub Enter_Click(Sender As Object, E As EventArgs)
		Dim strMessage As String                               '��������������Ϣ
		strMessage="������" & user_name.Text                      '��ȡ����
		strMessage=strMessage & "<br>���룺" & password.Text        '��ȡ����
		strMessage=strMessage & "<br>�Ա�" & sex.SelectedItem.Text  '��ȡ�Ա�
		'�����ѭ��������ȡ���ã��Ƚϸ��ӡ�
		strMessage=strMessage & "<br>���ã�"
		Dim I As Integer
		For I = 0 to love.Items.Count-1                             '�����ж����е���
			If love.Items(I).Selected=True Then 
				strMessage = strMessage & love.Items(I).Text & "��"
			End If
		Next
		strMessage=strMessage & "<br>ְҵ��" & career.SelectedItem.Text   '��ȡְҵ
		strMessage=strMessage & "<br>��飺" & introduction.Text         '��ȡ���
		'����label�ؼ�message��ֵ����ҳ������ʾ��Ϣ
		message.Text=strMessage                                
	End sub
</script>
<html>
<body>
	<h4 align="center">����д������Ϣ</h4>
	<form runat="server">
		������<asp:Textbox id="user_name" runat="server"/><br>
		���룺<asp:Textbox id="password" Textmode="Password" runat="server"/><br>
		�Ա�
		<asp:RadioButtonList id="sex" RepeatDirection="Horizontal" runat="server">
			<asp:Listitem value="male">��</asp:Listitem>
			<asp:Listitem value="female">Ů</asp:Listitem>
		</asp:RadioButtonList>
		���ã�
		<asp:CheckBoxList id="love" RepeatDirection="Horizontal" runat="server">
			<asp:Listitem value="music" >����</asp:Listitem>
			<asp:Listitem value="computer" >�����</asp:Listitem>
		</asp:CheckBoxList >
		ְҵ��
		<asp:DropDownList id="career" runat="server">
			<asp:Listitem value="education" >����ҵ</asp:Listitem>
			<asp:Listitem value="finance" >����ҵ</asp:Listitem>
			<asp:Listitem value="other" >����</asp:Listitem>
		</asp:DropDownList ><br>
		��飺<asp:Textbox id="introduction" Textmode="Multiline" rows="2" columns="40" runat="server"/>
		<br><asp:button  Text="�ύ" onClick="Enter_click" runat="server"/>
		<br><asp:label id="message" Text="����������" runat="server"/>
	</form>
</body> 
</html>
