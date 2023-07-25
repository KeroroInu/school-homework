<% @ Page Language="C#" %>
<script language="C#" runat="server">
protected void Page_Load(Object sender, EventArgs e){
   // 若是第一次访问，则往列表框中填充数据
   if (!IsPostBack) {
      this.Loves.Items.Add(new ListItem("唱歌","Singing"));
      this.Loves.Items.Add(new ListItem("跳舞","Dancing"));
      this.Loves.Items.Add(new ListItem("划船","bowing"));
      this.Loves.Items.Add(new ListItem("睡觉","Sleeping"));
   }
}
void SubmitBtn_Click(Object sender, EventArgs e) {
   string s = "我的爱好是：";
   for (int i=0;i<Loves.Items.Count;i++)   {
      if (Loves.Items[i].Selected)      {
         s+=Loves.Items[i].Text+"&nbsp;&nbsp;";
      }
   }
   Label1.Text = s;
}
</script><form runat=server>
   你的爱好列表为：<br>
   <asp:ListBox id="Loves" 
          Rows="5"
          Width="100"
          SelectionMode="Multiple" 
          runat="server">
   </asp:ListBox>
   <asp:button id="Submit"
        Text="提交" 
        OnClick="SubmitBtn_Click" 
        runat="server" />       
   <asp:Label id="Label1" 
           runat="server"/>
</form>
