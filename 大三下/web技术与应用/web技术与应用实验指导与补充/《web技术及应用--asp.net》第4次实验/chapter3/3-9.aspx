<script language="C#" runat="server">
	private void  Enter_Click(object sender,EventArgs e)
	{
		if(Page.IsValid)    //如果通过验证，则显示有关信息
		{
			String  strMessage;                               
			strMessage="用户名：" + user_name.Text;                   
			strMessage=strMessage + "<br>用户密码：" + password1.Text;    
			strMessage=strMessage + "<br>用户年龄：" + age.Text;         
			strMessage=strMessage + "<br>电子信箱：" + email.Text ;     
			message.Text=strMessage;
		}
		
	}
</script>
<html>
<body>
    <h4 align="center">验证控件示例</h4>
    <form runat="server">
        用户名：<asp:textbox id="user_name" runat="server"/>
	<asp:RequiredFieldValidator id="require1" ControlToValidate="user_name" ErrorMessage="必须输入用户名"  runat="server"/>
	<asp:RegularExpressionValidator id="Regular1" ControlToValidate="user_name" ValidationExpression="[a-zA-Z][a-zA-Z0-9_]{0,}" ErrorMessage="第1个字符必须是字母,且只能包含字母、数字和下划线" runat="server" />

	<p>用户密码：<asp:textbox id="password1" textmode="Password" runat="server"/>
	<p>确认密码：<asp:textbox id="password2" textmode="Password" runat="server"/>
	<asp:RequiredFieldValidator id="require2" ControlToValidate="password1" ErrorMessage="必须输入密码"  runat="server"/>
	<asp:CompareValidator id="Compare1" ControlToValidate="password1" ControlToCompare="password2" ErrorMessage="密码和确认密码必须一致" runat="server" />

	<p>用户年龄：<asp:textbox id="age" runat="server"/>
	<asp:RequiredFieldValidator id="require3" ControlToValidate="age" ErrorMessage="必须输入年龄"  runat="server"/>
	<asp:RangeValidator id="Range1" ControlToValidate="age" MinimumValue="1" MaximumValue="150" ErrorMessage="年龄应该在1到150之间" Type="Integer" runat="server" />

	<p>电子信箱：<asp:textbox id="email" columns="50" runat="server"/>
	<asp:RequiredFieldValidator id="require4" ControlToValidate="email" ErrorMessage="必须输入E-mail地址"  runat="server"/>
	<asp:RegularExpressionValidator id="Regular2" ControlToValidate="email" ValidationExpression=".{1,}@.{1,}\.[a-zA-Z]{2,3}" ErrorMessage="必须输入正确的E-mail地址" runat="server" />

		<p><asp:button id="Enter" text="提 交"  onClick="Enter_Click" runat="server" />
		<p><asp:label id="message" runat="server"/>
    </form>
</body>
</html>
