<%@ Import Namespace="System.IO" %>
<script language="C#" runat="server">
	private void Enter_Click(object sender,EventArgs e)
	{
		String filename,filepath ;  
		//Path.GetFileName�������Դ��κ�һ��·���ַ����л�ȡ�ļ�����
		filename= Path.GetFileName(uploadfile.PostedFile.FileName);   
		//filepath�Ƿ������˱����ϴ��ļ�������·��
		filepath= "c:\\inetpub\\wwwroot\\asp.net\\chapter3\\upload\\" + filename; 
		//�����ϴ��ļ�
		uploadfile.PostedFile.SaveAs(filepath);                      
		//������ʾ�ϴ��ļ���ϸ��Ϣ
		message.InnerHtml = "�ļ��Ѿ��ɹ����أ���ϸ��Ϣ����";
		message.InnerHtml += "<br>����·����" + filepath ;            //ע��+=�����
		message.InnerHtml += "<br>�ļ����ƣ�" + filename; 
		message.InnerHtml += "<br>�ļ���С��" + uploadfile.PostedFile.ContentLength + "�ֽ�";
		message.InnerHtml += "<br>�ļ����ͣ�" + uploadfile.PostedFile.ContentType;
		message.InnerHtml += "<br>�ͻ���·����" + uploadfile.PostedFile.FileName;
		message.InnerHtml += "<br>�ļ�˵����" + intro.Value ;     
		message.InnerHtml += "<br><a href=//upload/" + filename + "//>�쿴�ļ�</a>"	;
	}
</script>
<html>
<body>
    <h4 align="center">�ļ��ϴ�ʾ��</h4>
    <form enctype="multipart/form-data" runat="server">
        ѡ���ļ���<input id="uploadfile" type="file" runat="server">
        <br>�ļ�˵����<input id="intro" type="text" runat="server">
        <br><input type="button" id="enter" value="�ύ" OnServerClick="Enter_Click" runat="server">
        <p><span id="message" style="font: 9pt ����;" runat="server" />
    </form>
</body>
</html>

