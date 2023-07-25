<%@ Import Namespace="System.IO" %>
<script language="C#" runat="server">
	private void Enter_Click(object sender,EventArgs e)
	{
		String filename,filepath ;  
		//Path.GetFileName方法可以从任何一个路径字符串中获取文件名称
		filename= Path.GetFileName(uploadfile.PostedFile.FileName);   
		//filepath是服务器端保存上传文件的物理路径
		filepath= "c:\\inetpub\\wwwroot\\asp.net\\chapter3\\upload\\" + filename; 
		//保存上传文件
		uploadfile.PostedFile.SaveAs(filepath);                      
		//下面显示上传文件详细信息
		message.InnerHtml = "文件已经成功上载，详细信息如下";
		message.InnerHtml += "<br>保存路径：" + filepath ;            //注意+=运算符
		message.InnerHtml += "<br>文件名称：" + filename; 
		message.InnerHtml += "<br>文件大小：" + uploadfile.PostedFile.ContentLength + "字节";
		message.InnerHtml += "<br>文件类型：" + uploadfile.PostedFile.ContentType;
		message.InnerHtml += "<br>客户端路径：" + uploadfile.PostedFile.FileName;
		message.InnerHtml += "<br>文件说明：" + intro.Value ;     
		message.InnerHtml += "<br><a href=//upload/" + filename + "//>察看文件</a>"	;
	}
</script>
<html>
<body>
    <h4 align="center">文件上传示例</h4>
    <form enctype="multipart/form-data" runat="server">
        选择文件：<input id="uploadfile" type="file" runat="server">
        <br>文件说明：<input id="intro" type="text" runat="server">
        <br><input type="button" id="enter" value="提交" OnServerClick="Enter_Click" runat="server">
        <p><span id="message" style="font: 9pt 宋体;" runat="server" />
    </form>
</body>
</html>

