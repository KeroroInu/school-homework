<% @ Page Language="C#" %>
<script language="C#" runat="server">
void UploadBtn_Click(Object sender,EventArgs e){
   if (UpFile.PostedFile!=null) {
      // ��ʾ�ϴ��ļ����ļ������ļ����ͺ��ļ���С
      FileName.InnerHtml=UpFile.PostedFile.FileName;
      FileType.InnerHtml=UpFile.PostedFile.ContentType;
      FileLength.InnerHtml=UpFile.PostedFile.ContentLength.ToString();
      FileDetails.Visible=true;
      //ȡ�ļ���
      string myDir=UpFile.PostedFile.FileName;
      int mypos=myDir.LastIndexOf("\\");
      string myFileName=myDir.Substring(mypos);
      // �����ϴ����ļ�
      string mySavePath=Server.MapPath(".")+ myFileName;
      SaveDir.InnerHtml=mySavePath;
      UpFile.PostedFile.SaveAs(mySavePath);
   }
}
</script>
<form method="post" enctype="multipart/form-data" runat="server">
   ѡ��Ҫ�ϴ����ļ�: <input id="UpFile" type="file" runat="server">
   <input type=submit value="�ϴ�"
    OnServerclick="UploadBtn_Click" runat="server"><br><br>
   <div id="FileDetails" Visible=false runat="server">
   <b>ԭ�ļ���:</b><span id="FileName" runat="server"/><br>
   <b>�ϴ���������:</b><span id="SaveDir" runat="server"/><br>
   <b>�ļ�����:</b><span id="FileType" runat="server"/><br>
   <b>�ļ���С:</b><span id="FileLength" runat="server"/>�ֽ�<br>
</div></form>
