<script Language="VB" runat="server">
	Sub Enter_Click(Sender As Object, E As EventArgs)
		Dim strMessage As String                               '定义变量，存放信息
		strMessage="姓名：" & user_name.value                  '获取文本框的值
		strMessage=strMessage & "<br>密码：" & password.value    '获取密码值
			'通过判断获取单选框的值，这是一组，只能选择其中一个。
		If sex1.checked="True" Then                        
			strMessage=strMessage & "<br>性别：" & sex1.value
		Elseif sex2.checked="True" Then
			strMessage=strMessage & "<br>性别：" & sex2.value
		End If
			'如果选择了爱好1，则获取第1个复选框的值
		If love1.checked="True" Then      
			strMessage=strMessage & "<br>爱好1：" & love1.value
		End IF
			'如果选择了爱好2，则获取第2个复选框的值
		If love2.checked="True" Then                              
			strMessage=strMessage & "<br>爱好2：" & love2.value
		End IF
		strMessage=strMessage & "<br>职业：" & career.value       '获取下拉列表框的值
		strMessage=strMessage & "<br>简介：" & introduction.value  '获取多行文本框的值
			'最后给一般控件message赋值，在页面上显示信息
		message.innerhtml=strMessage                                
	End sub
</script>
<html>
<body>
	<h4 align="center">请填写个人信息</h4>
	<form runat="server">
		姓名：<input id="user_name" type="text" runat="server"/><br>
		密码：<input id="password" type="password" runat="server"/><br>
		性别：<input id="sex1" type="radio" value="男" name="sex" runat="server"/>男
		<input id="sex2" type="radio" value="女" name="sex" runat="server"/>女<br>
		爱好：<input id="love1" type="checkbox" value="音乐" runat="server"/>音乐
		<input id="love2" type="checkbox" value="计算机" runat="server"/>计算机<br>
		职业：<select id="career" runat="server">
			<option value="教育业">教育业</option>
			<option value="金融业">金融业</option>
			<option value="其它">其它</option>
		</select><br>
		简介：<textarea id="introduction" rows="2" cols="40" runat="server" /><br>
		<input type="submit" value="提交" onServerClick="Enter_click" runat="server"/>
		<input type="reset" value="重置" runat="server"/>
		<div id="message" runat="server" >请输入内容后单击【提交】按钮</div>
	</form>
</body> 
</html>
