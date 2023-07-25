<%@ Page clienttarget=downlevel Language="C#" %>
<form runat="server">
<b>请数字开头后接一个大写字母：</b>
<asp:TextBox id="Email" runat="server" />
<asp:Button text="验证" runat=server /><br>
<asp:RegularExpressionValidator id="rev" 
     ControlToValidate="Email"
     ValidationExpression="\d[A-Z]*"
     Display="Dynamic"
     runat="server">
输入错误
</asp:RegularExpressionValidator>          

</form>
