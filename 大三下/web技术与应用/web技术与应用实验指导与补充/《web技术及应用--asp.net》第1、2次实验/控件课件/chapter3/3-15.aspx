<script Language="VB" runat="server">
	Sub Page_Load(Sender As Object, E As EventArgs)     
		Dim mycity() As String={"����","�Ϻ�","����"}    '��������
		city.DataSource=mycity                         'ָ������Դ
		city.DataBind                                  'ִ�а�
	End Sub
</script>
<html>
<body>
	<form runat="server">
		<asp:DropDownList id="city" runat="server" />
	</form>
</body>
</html>
