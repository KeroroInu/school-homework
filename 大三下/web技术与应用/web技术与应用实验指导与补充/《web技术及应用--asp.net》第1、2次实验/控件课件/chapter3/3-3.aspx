<script language="VB" runat="server">
	Sub Enter_Click(sender As Object, e As EventArgs)
		uploadfile.PostedFile.SaveAs("c:\inetpub\wwwroot\asp.net\chapter3\upload\temp.txt")                      
	End Sub
</script>
<html>
<body>
    <h4 align="center">�ļ��ϴ�ʾ��</h4>
    <form enctype="multipart/form-data" runat="server">
        ѡ���ļ���<input id="uploadfile" type="file" runat="server">
        <br><input type="button" id="enter" value="�ύ" OnServerClick="Enter_Click" runat="server">
    </form>
</body>
</html>

