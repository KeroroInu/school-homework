<%@ Page clienttarget=downlevel Language="C#" %>
<form runat="server">
<b>�����ֿ�ͷ���һ����д��ĸ��</b>
<asp:TextBox id="Email" runat="server" />
<asp:Button text="��֤" runat=server /><br>
<asp:RegularExpressionValidator id="rev" 
     ControlToValidate="Email"
     ValidationExpression="\d[A-Z]*"
     Display="Dynamic"
     runat="server">
�������
</asp:RegularExpressionValidator>          

</form>
