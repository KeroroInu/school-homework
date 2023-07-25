<%@ Page Language="C#" %>
<script language="C#" runat=server>
protected void Date_Selected(object sender, EventArgs e){
   switch (Calendar1.SelectedDates.Count)   {
      case (0):
         Label1.Text = "没有选择日期!";
         break;
      case (1):
         Label1.Text = "选择的日期是" 
		 + Calendar1.SelectedDate.ToShortDateString();
         break;
      case (7):
         Label1.Text = "周开始的日期是"
		 + Calendar1.SelectedDate.ToShortDateString();
         break;
      default:
         Label1.Text = "月开始的日期是" + 
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
     SelectWeekText="周"
     SelectMonthText="月"
     runat="server">
   <TodayDayStyle Font-Bold="True"/>
   <DayHeaderStyle Font-Bold="True"/>
</asp:Calendar><p>
<asp:Label id="Label1" runat="server" />
</form>
