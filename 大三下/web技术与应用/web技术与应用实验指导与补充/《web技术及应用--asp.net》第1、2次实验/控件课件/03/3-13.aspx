<% @ Page Language="C#" %>
<script language="C#" runat="server">
void Page_Load(Object sender, EventArgs e)
{   // ��ѡ���б�������
   int numrows = Convert.ToInt32(TabRows.SelectedItem.Text);
   // ��ѡ���б�������
   int numcells = Convert.ToInt32(TabCells.SelectedItem.Text);
   // ��̬���ɱ���к���
   for (int j=0; j<numrows; j++) {
      TableRow r=new TableRow();
      for (int i=0; i<numcells; i++) {
         TableCell c=new TableCell();
         c.Controls.Add(new LiteralControl("��"+j.ToString()+",��"+i.ToString()));
         r.Cells.Add(c);
      }
      DyTab.Rows.Add(r);
   }
}
</script>
<h3><font face="Verdana">��̬���ɱ��</font></h3>
<form runat="server">
  <asp:Table id="DyTab" CellPadding=5 CellSpacing=0 Border="1" 
         BorderColor="black" runat="server" /> 
  <p>  ����:
  <asp:DropDownList id="TabRows" runat="server">
      <asp:ListItem>1</asp:ListItem>
      <asp:ListItem>2</asp:ListItem>
      <asp:ListItem>3</asp:ListItem>
      <asp:ListItem>4</asp:ListItem>
      <asp:ListItem>5</asp:ListItem>
  </asp:DropDownList>
  <br>  ����:
  <asp:DropDownList id="TabCells" runat="server">
      <asp:ListItem>1</asp:ListItem>
      <asp:ListItem>2</asp:ListItem>
      <asp:ListItem>3</asp:ListItem>
      <asp:ListItem>4</asp:ListItem>
      <asp:ListItem>5</asp:ListItem>
  </asp:DropDownList>
  <asp:Button Text="����" runat="server"/>
</form>
