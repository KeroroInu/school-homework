<script Language="C#" runat="server">
	private void Enter_click(object sender,EventArgs e)
	{
		String strMessage;                             //定义变量，存放信息
		strMessage="姓名：" + user_name.Value ;                 //获取文本框的值
		strMessage=strMessage + "<br>密码：" + password.Value;    //获取密码值
			//通过判断获取单选框的值，这是一组，只能选择其中一个。
		if(sex1.Checked) 
		{
			strMessage=strMessage + "<br>性别：" + sex1.Value;
		}
		else if(sex2.Checked)
		{
			strMessage=strMessage + "<br>性别：" + sex2.Value;
		}
			//如果选择了爱好1，则获取第1个复选框的值
		if(love1.Checked)
		{
			strMessage=strMessage + "<br>爱好1：" + love1.Value;
		}
			//如果选择了爱好2，则获取第2个复选框的值
		if(love2.Checked)                              
			strMessage=strMessage + "<br>爱好2：" + love2.Value;		
		strMessage=strMessage + "<br>职业：" + career.Value;      //获取下拉列表框的值
		strMessage=strMessage + "<br>简介：" + introduction.Value;  //获取多行文本框的值
			//最后给一般控件message赋值，在页面上显示信息
		message.InnerHtml=strMessage ;                               
	}
</script>
<html>
<body>
	<h4 align="center">请填写个人信息</h4>
	<form runat="server">
		姓名：<input id="user_name" type="text" runat="server"/><br>
		密码：<input id="password" type="password" runat="server"/><br>
		性别：<input id="sex1" type="radio" Value="男" name="sex" runat="server"/>男
		<input id="sex2" type="radio" Value="女" name="sex" runat="server"/>女<br>
		爱好：<input id="love1" type="checkbox" Value="音乐" runat="server"/>音乐
		<input id="love2" type="checkbox" Value="计算机" runat="server"/>计算机<br>
		职业：<select id="career" runat="server">
			<option Value="教育业">教育业</option>
			<option Value="金融业">金融业</option>
			<option Value="其它">其它</option>
		</select><br>
		简介：<textarea id="introduction" rows="2" cols="40" runat="server" /><br>
		<input type="submit" Value="提交" onServerClick="Enter_click" runat="server"/>
		<input type="reset" Value="重置" runat="server"/>
		<div id="message" runat="server" >请输入内容后单击【提交】按钮</div>
	</form>
</body> 
</html>
