<%@ Page clienttarget=downlevel Language="C#" %>
<form runat="server">
<b>����1:</b>
<asp:TextBox id="passwd1" TextMode="Password" runat="server" />
<br><b>����2:</b>
<asp:TextBox id="passwd2" TextMode="Password" runat="server" />
<asp:CompareValidator id="CV"
         ControlToValidate="passwd1"
         ControlToCompare="passwd2"
         Type="String" 
         Operator="Equal" 
         Display="static" runat="server">
		 ���߲�һ�£�
</asp:CompareValidator>
<br><br><asp:Button id="Validate" text="��֤" runat=server />
</form>
