<Script Language="VB" Runat="Server">
Sub ShowText(Sender As Object,e As EventArgs)
    MyLabel.Text="���ղ�������ı�Ϊ��" & MyText.Text
End Sub
</Script>
<Html><Body>
<Center><Font Size=6 Face="����">
TextBox�ؼ�AutoPostBack������OnTextChanged�¼����ʹ��ʾ��</Center>
<Form Runat="Server">
   <Asp:TextBox Runat="Server" Id="MyText" AutoPostBack="True" Columns="40" Rows="4"
TextMode="Multiline" Wrap="True" OnTextChanged="ShowText" ></Asp:TextBox >
   <Asp:Label Runat="Server" Id="MyLabel"></Asp:Label></Font>
</Form></Body>
</Html> 
