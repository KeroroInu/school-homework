<script language="C#" runat="server">
	private void Enter_Click(object sender,EventArgs e)
	{
		uploadfile.PostedFile.SaveAs(@"c:\inetpub\wwwroot\asp.net\chapter3\upload\temp.txt");                      
	}
</script>
<html>
<body>
    <h4 align="center">文件上传示例</h4>
    <form enctype="multipart/form-data" runat="server">
        选择文件：<input id="uploadfile" type="file" runat="server">
        <br><input type="button" id="enter" value="提交" OnServerClick="Enter_Click" runat="server">
    </form>
</body>
</html>

