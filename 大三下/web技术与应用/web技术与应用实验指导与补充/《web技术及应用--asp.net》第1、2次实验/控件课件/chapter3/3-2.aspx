<script Language="VB" runat="server">
	Sub Enter_Click(Sender As Object, E As EventArgs)
		Dim strMessage As String                               '��������������Ϣ
		strMessage="������" & user_name.value                  '��ȡ�ı����ֵ
		strMessage=strMessage & "<br>���룺" & password.value    '��ȡ����ֵ
			'ͨ���жϻ�ȡ��ѡ���ֵ������һ�飬ֻ��ѡ������һ����
		If sex1.checked="True" Then                        
			strMessage=strMessage & "<br>�Ա�" & sex1.value
		Elseif sex2.checked="True" Then
			strMessage=strMessage & "<br>�Ա�" & sex2.value
		End If
			'���ѡ���˰���1�����ȡ��1����ѡ���ֵ
		If love1.checked="True" Then      
			strMessage=strMessage & "<br>����1��" & love1.value
		End IF
			'���ѡ���˰���2�����ȡ��2����ѡ���ֵ
		If love2.checked="True" Then                              
			strMessage=strMessage & "<br>����2��" & love2.value
		End IF
		strMessage=strMessage & "<br>ְҵ��" & career.value       '��ȡ�����б���ֵ
		strMessage=strMessage & "<br>��飺" & introduction.value  '��ȡ�����ı����ֵ
			'����һ��ؼ�message��ֵ����ҳ������ʾ��Ϣ
		message.innerhtml=strMessage                                
	End sub
</script>
<html>
<body>
	<h4 align="center">����д������Ϣ</h4>
	<form runat="server">
		������<input id="user_name" type="text" runat="server"/><br>
		���룺<input id="password" type="password" runat="server"/><br>
		�Ա�<input id="sex1" type="radio" value="��" name="sex" runat="server"/>��
		<input id="sex2" type="radio" value="Ů" name="sex" runat="server"/>Ů<br>
		���ã�<input id="love1" type="checkbox" value="����" runat="server"/>����
		<input id="love2" type="checkbox" value="�����" runat="server"/>�����<br>
		ְҵ��<select id="career" runat="server">
			<option value="����ҵ">����ҵ</option>
			<option value="����ҵ">����ҵ</option>
			<option value="����">����</option>
		</select><br>
		��飺<textarea id="introduction" rows="2" cols="40" runat="server" /><br>
		<input type="submit" value="�ύ" onServerClick="Enter_click" runat="server"/>
		<input type="reset" value="����" runat="server"/>
		<div id="message" runat="server" >���������ݺ󵥻����ύ����ť</div>
	</form>
</body> 
</html>
