<%@ Page clienttarget=downlevel Language="C#" %>
<form runat="server">
<b>请输入1-6选项中的一项：</b>
<asp:TextBox id="Choice" runat="server" />
<asp:Button text="验证" runat=server /><br>
<asp:RangeValidator id="rv"
             ControlToValidate="Choice"
             MinimumValue="1"
             MaximumValue="6"
             ErrorMessage="输入必须是1-6之间的整数"
             Type="Integer"
             Display="dynamic" runat="server">
</asp:RangeValidator>
</form>
