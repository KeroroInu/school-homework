<script language="VB" runat="server">
	Public Property userID As String          '����һ��UserID����ֵ       
		Get
			Return user_name.Text     '��������ֵ
		End Get
		Set
			user_name.Text = Value    '����Value�ؼ�����������ֵ
		End Set
	End Property
	Public Property UserPassword As String    '����һ��UserPassword����
		Get
			Return password.Text      '����UserPassword����ֵ
		End Get
		Set
			password.Text = Value     '����Value�ؼ�����������ֵ
		End Set
	End Property
</script>
<table>
	<tr>
		<td>�û���:</td>
		<td><asp:TextBox id="user_name" runat="server"/></td>
	</tr><tr>
		<td>�û�����:</td>
		<td><asp:TextBox id="password" TextMode="password" runat="server"/></td>
	</tr><tr>
		<td></td>
		<td><asp:Button Text=" ȷ �� " runat="server"/></td>
	</tr>
</table>

