<% @ Page Language="C#" %>
<script language="C#" runat="server">
protected void Page_Load(Object sender, EventArgs e){
   // ���ǵ�һ�η��ʣ������б�����������
   if (!IsPostBack) {
      this.Loves.Items.Add(new ListItem("����","Singing"));
      this.Loves.Items.Add(new ListItem("����","Dancing"));
      this.Loves.Items.Add(new ListItem("����","bowing"));
      this.Loves.Items.Add(new ListItem("˯��","Sleeping"));
   }
}
void SubmitBtn_Click(Object sender, EventArgs e) {
   string s = "�ҵİ����ǣ�";
   for (int i=0;i<Loves.Items.Count;i++)   {
      if (Loves.Items[i].Selected)      {
         s+=Loves.Items[i].Text+"&nbsp;&nbsp;";
      }
   }
   Label1.Text = s;
}
</script><form runat=server>
   ��İ����б�Ϊ��<br>
   <asp:ListBox id="Loves" 
          Rows="5"
          Width="100"
          SelectionMode="Multiple" 
          runat="server">
   </asp:ListBox>
   <asp:button id="Submit"
        Text="�ύ" 
        OnClick="SubmitBtn_Click" 
        runat="server" />       
   <asp:Label id="Label1" 
           runat="server"/>
</form>
