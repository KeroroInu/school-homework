<%@ Page clienttarget=downlevel Language="C#" %>
<h2>请填写您的个人信息：</h2><hr>
<form runat="server">
      <b>姓名:</b> <asp:TextBox id="Name"
                   MaxLength="20"
                   runat="server" />
         <asp:RequiredFieldValidator id="rfv1"
                   ControlToValidate="Name" 
                   ErrorMessage="姓名不能为空"
                   Display="Static"
                   runat=server>*
         </asp:RequiredFieldValidator>
         <br><b>性别:</b>
         <asp:RadioButtonList id="Sex"
                   RepeatLayout="Flow"
                   RepeatDirection="Horizontal"
                   runat="server">
            <asp:ListItem>男</asp:ListItem>
            <asp:ListItem>女</asp:ListItem>
         </asp:RadioButtonList>
         <asp:RequiredFieldValidator id="rfv2"
                   ControlToValidate="Sex" 
                   ErrorMessage="没有选择性别"
                   Display="Static" 
                   runat=server>*
         </asp:RequiredFieldValidator>
         <asp:Button id="Submit"
                     Text="提交" 
                     runat="server" />
     <asp:ValidationSummary id="vs" 
           DisplayMode="BulletList" 
           HeaderText="必须做以下输入或选择:"
           runat="server" />
</form>
