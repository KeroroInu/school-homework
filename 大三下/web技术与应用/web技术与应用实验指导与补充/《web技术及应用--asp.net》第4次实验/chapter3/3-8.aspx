<script language="C#" runat="server">
	private void  Date_Selected(object sender,EventArgs e) 
	{
		message.Text = "ѡ������Ϊ��" + Calendar1.SelectedDate.ToLongDateString();
	}
</script>
<html>
<body>
    <h4 align="center">����ʾ��</h4>
    <form runat="server">
        <asp:Calendar id="Calendar1" onSelectionChanged="Date_Selected" TodayDayStyle-BackColor="gray"	 SelectedDayStyle-BackColor="red" runat="server" />
        <p><asp:Label id="message" runat="server" />
    </form>
</body>
</html>

