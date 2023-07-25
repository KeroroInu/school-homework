<%@ Page Language="C#" %>
<script language="C#" runat=server>
protected void Date_Selected(object sender, EventArgs e){
   switch (Calendar1.SelectedDates.Count)   {
      case (0):
         Label1.Text = "û��ѡ������!";
         break;
      case (1):
         Label1.Text = "ѡ���������" 
		 + Calendar1.SelectedDate.ToShortDateString();
         break;
      case (7):
         Label1.Text = "�ܿ�ʼ��������"
		 + Calendar1.SelectedDate.ToShortDateString();
         break;
      default:
         Label1.Text = "�¿�ʼ��������" + 
		 Calendar1.SelectedDate.ToShortDateString();
         break;
   }
}
</script>
<form runat="server">
<asp:Calendar id=Calendar1
     OnSelectionChanged="Date_Selected"
     SelectionMode="DayWeekMonth"
     Font-Name="Verdana" 
     Font-Size="12px"
     NextPrevFormat="ShortMonth"
     SelectWeekText="��"
     SelectMonthText="��"
     runat="server">
   <TodayDayStyle Font-Bold="True"/>
   <DayHeaderStyle Font-Bold="True"/>
</asp:Calendar><p>
<asp:Label id="Label1" runat="server" />
</form>
