<script language="C#" runat="server">
	public string userID          //定义一个UserID属性值 
	{
		get
		{
			return user_name.Text;     //返回属性值
		}
		set
		{
			user_name.Text = value;    //利用Value关键字设置属性值
		}
	}
	
	public string UserPassword     //定义一个UserPassword属性
	{
		get
		{
			return password.Text;      //返回UserPassword属性值
		}
		set
		{
			password.Text = value;     //利用Value关键字设置属性值
		}
	}
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

