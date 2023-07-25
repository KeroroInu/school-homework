<% @ Page Language="C#" %>
<script language="C#" runat="server">
void UploadBtn_Click(Object sender,EventArgs e){
   if (UpFile.PostedFile!=null) {
      // 显示上传文件的文件名、文件类型和文件大小
      FileName.InnerHtml=UpFile.PostedFile.FileName;
      FileType.InnerHtml=UpFile.PostedFile.ContentType;
      FileLength.InnerHtml=UpFile.PostedFile.ContentLength.ToString();
      FileDetails.Visible=true;
      //取文件名
      string myDir=UpFile.PostedFile.FileName;
      int mypos=myDir.LastIndexOf("\\");
      string myFileName=myDir.Substring(mypos);
      // 保存上传的文件
      string mySavePath=Server.MapPath(".")+ myFileName;
      SaveDir.InnerHtml=mySavePath;
      UpFile.PostedFile.SaveAs(mySavePath);
   }
}
</script>
<form method="post" enctype="multipart/form-data" runat="server">
   选择要上传的文件: <input id="UpFile" type="file" runat="server">
   <input type=submit value="上传"
    OnServerclick="UploadBtn_Click" runat="server"><br><br>
   <div id="FileDetails" Visible=false runat="server">
   <b>原文件名:</b><span id="FileName" runat="server"/><br>
   <b>上传到服务器:</b><span id="SaveDir" runat="server"/><br>
   <b>文件类型:</b><span id="FileType" runat="server"/><br>
   <b>文件大小:</b><span id="FileLength" runat="server"/>字节<br>
</div></form>
