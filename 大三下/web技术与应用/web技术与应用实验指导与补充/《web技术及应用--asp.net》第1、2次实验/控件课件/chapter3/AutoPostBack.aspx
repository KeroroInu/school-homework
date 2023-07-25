<Script Language="VB" Runat="Server">
Sub ShowText(Sender As Object,e As EventArgs)
    MyLabel.Text="您刚才输入的文本为：" & MyText.Text
End Sub
</Script>
<Html><Body>
<Center><Font Size=6 Face="隶书">
TextBox控件AutoPostBack属性与OnTextChanged事件配合使用示例</Center>
<Form Runat="Server">
   <Asp:TextBox Runat="Server" Id="MyText" AutoPostBack="True" Columns="40" Rows="4"
TextMode="Multiline" Wrap="True" OnTextChanged="ShowText" ></Asp:TextBox >
   <Asp:Label Runat="Server" Id="MyLabel"></Asp:Label></Font>
</Form></Body>
</Html> 
