<%@ Page clienttarget=downlevel Language="C#" %>
<form runat="server">
<b>密码1:</b>
<asp:TextBox id="passwd1" TextMode="Password" runat="server" />
<br><b>密码2:</b>
<asp:TextBox id="passwd2" TextMode="Password" runat="server" />
<asp:CompareValidator id="CV"
         ControlToValidate="passwd1"
         ControlToCompare="passwd2"
         Type="String" 
         Operator="Equal" 
         Display="static" runat="server">
		 两者不一致！
</asp:CompareValidator>
<br><br><asp:Button id="Validate" text="验证" runat=server />
</form>
