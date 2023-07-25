<script Language="C#" runat="server">
	private void  Enter_Click(object sender, EventArgs e)
	{
		String strMessage;                              //定义变量，存放信息
		strMessage="姓名：" + user_name.Text ;                     //获取姓名
		strMessage=strMessage + "<br>密码：" + password.Text;        //获取密码
		strMessage=strMessage + "<br>性别：" + sex.SelectedItem.Text;  //获取性别
		//下面的循环用来获取爱好，比较复杂。
		strMessage=strMessage + "<br>爱好：";
		int I;
		for(I = 0 ;I < love.Items.Count ; I++) //依次判断所有的项
		{
			if(love.Items[I].Selected)
			{
				strMessage = strMessage + love.Items[I].Text + "，";
			}
		}
		strMessage=strMessage + "<br>职业：" + career.SelectedItem.Text;   //获取职业
		strMessage=strMessage + "<br>简介：" + introduction.Text;         //获取简介
		//最后给label控件message赋值，在页面上显示信息
		message.Text=strMessage ;                               
	}
</script>
<html>
<body>
	<h4 align="center">请填写个人信息</h4>
	<form runat="server">
		姓名：<asp:Textbox id="user_name" runat="server"/><br>
		密码：<asp:Textbox id="password" Textmode="Password" runat="server"/><br>
		性别：
		<asp:RadioButtonList id="sex" RepeatDirection="Horizontal" runat="server">
			<asp:Listitem value="male">男</asp:Listitem>
			<asp:Listitem value="female">女</asp:Listitem>
		</asp:RadioButtonList>
		爱好：
		<asp:CheckBoxList id="love" RepeatDirection="Horizontal" runat="server">
			<asp:Listitem value="music" >音乐</asp:Listitem>
			<asp:Listitem value="computer" >计算机</asp:Listitem>
		</asp:CheckBoxList >
		职业：
		<asp:DropDownList id="career" runat="server">
			<asp:Listitem value="education" >教育业</asp:Listitem>
			<asp:Listitem value="finance" >金融业</asp:Listitem>
			<asp:Listitem value="other" >其它</asp:Listitem>
		</asp:DropDownList ><br>
		简介：<asp:Textbox id="introduction" Textmode="Multiline" rows="2" columns="40" runat="server"/>
		<br><asp:button  Text="提交" onClick="Enter_Click" runat="server"/>
		<br><asp:label id="message" Text="请输入内容" runat="server"/>
	</form>
</body> 
</html>
