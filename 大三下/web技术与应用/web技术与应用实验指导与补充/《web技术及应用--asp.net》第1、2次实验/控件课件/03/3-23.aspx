<%@ Page clienttarget=downlevel Language="C#" %>
<h2>����д���ĸ�����Ϣ��</h2><hr>
<form runat="server">
      <b>����:</b> <asp:TextBox id="Name"
                   MaxLength="20"
                   runat="server" />
         <asp:RequiredFieldValidator id="rfv1"
                   ControlToValidate="Name" 
                   ErrorMessage="��������Ϊ��"
                   Display="Static"
                   runat=server>*
         </asp:RequiredFieldValidator>
         <br><b>�Ա�:</b>
         <asp:RadioButtonList id="Sex"
                   RepeatLayout="Flow"
                   RepeatDirection="Horizontal"
                   runat="server">
            <asp:ListItem>��</asp:ListItem>
            <asp:ListItem>Ů</asp:ListItem>
         </asp:RadioButtonList>
         <asp:RequiredFieldValidator id="rfv2"
                   ControlToValidate="Sex" 
                   ErrorMessage="û��ѡ���Ա�"
                   Display="Static" 
                   runat=server>*
         </asp:RequiredFieldValidator>
         <asp:Button id="Submit"
                     Text="�ύ" 
                     runat="server" />
     <asp:ValidationSummary id="vs" 
           DisplayMode="BulletList" 
           HeaderText="���������������ѡ��:"
           runat="server" />
</form>
