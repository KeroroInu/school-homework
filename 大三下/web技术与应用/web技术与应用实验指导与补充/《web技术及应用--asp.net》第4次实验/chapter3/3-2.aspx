<script Language="C#" runat="server">
	private void Enter_click(object sender,EventArgs e)
	{
		String strMessage;                             //��������������Ϣ
		strMessage="������" + user_name.Value ;                 //��ȡ�ı����ֵ
		strMessage=strMessage + "<br>���룺" + password.Value;    //��ȡ����ֵ
			//ͨ���жϻ�ȡ��ѡ���ֵ������һ�飬ֻ��ѡ������һ����
		if(sex1.Checked) 
		{
			strMessage=strMessage + "<br>�Ա�" + sex1.Value;
		}
		else if(sex2.Checked)
		{
			strMessage=strMessage + "<br>�Ա�" + sex2.Value;
		}
			//���ѡ���˰���1�����ȡ��1����ѡ���ֵ
		if(love1.Checked)
		{
			strMessage=strMessage + "<br>����1��" + love1.Value;
		}
			//���ѡ���˰���2�����ȡ��2����ѡ���ֵ
		if(love2.Checked)                              
			strMessage=strMessage + "<br>����2��" + love2.Value;		
		strMessage=strMessage + "<br>ְҵ��" + career.Value;      //��ȡ�����б���ֵ
		strMessage=strMessage + "<br>��飺" + introduction.Value;  //��ȡ�����ı����ֵ
			//����һ��ؼ�message��ֵ����ҳ������ʾ��Ϣ
		message.InnerHtml=strMessage ;                               
	}
</script>
<html>
<body>
	<h4 align="center">����д������Ϣ</h4>
	<form runat="server">
		������<input id="user_name" type="text" runat="server"/><br>
		���룺<input id="password" type="password" runat="server"/><br>
		�Ա�<input id="sex1" type="radio" Value="��" name="sex" runat="server"/>��
		<input id="sex2" type="radio" Value="Ů" name="sex" runat="server"/>Ů<br>
		���ã�<input id="love1" type="checkbox" Value="����" runat="server"/>����
		<input id="love2" type="checkbox" Value="�����" runat="server"/>�����<br>
		ְҵ��<select id="career" runat="server">
			<option Value="����ҵ">����ҵ</option>
			<option Value="����ҵ">����ҵ</option>
			<option Value="����">����</option>
		</select><br>
		��飺<textarea id="introduction" rows="2" cols="40" runat="server" /><br>
		<input type="submit" Value="�ύ" onServerClick="Enter_click" runat="server"/>
		<input type="reset" Value="����" runat="server"/>
		<div id="message" runat="server" >���������ݺ󵥻����ύ����ť</div>
	</form>
</body> 
</html>
