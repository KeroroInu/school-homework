<script language="C#" runat="server">
	public string userID          //����һ��UserID����ֵ 
	{
		get
		{
			return user_name.Text;     //��������ֵ
		}
		set
		{
			user_name.Text = value;    //����Value�ؼ�����������ֵ
		}
	}
	
	public string UserPassword     //����һ��UserPassword����
	{
		get
		{
			return password.Text;      //����UserPassword����ֵ
		}
		set
		{
			password.Text = value;     //����Value�ؼ�����������ֵ
		}
	}
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

