<script language="VB" runat="server">
	Public Property userID As String          '定义一个UserID属性值       
		Get
			Return user_name.Text     '返回属性值
		End Get
		Set
			user_name.Text = Value    '利用Value关键字设置属性值
		End Set
	End Property
	Public Property UserPassword As String    '定义一个UserPassword属性
		Get
			Return password.Text      '返回UserPassword属性值
		End Get
		Set
			password.Text = Value     '利用Value关键字设置属性值
		End Set
	End Property
</script>
<table>
	<tr>
		<td>用户名:</td>
		<td><asp:TextBox id="user_name" runat="server"/></td>
	</tr><tr>
		<td>用户密码:</td>
		<td><asp:TextBox id="password" TextMode="password" runat="server"/></td>
	</tr><tr>
		<td></td>
		<td><asp:Button Text=" 确 定 " runat="server"/></td>
	</tr>
</table>

