<%@ Page clienttarget=downlevel Language="C#" %>
<form runat="server">
<b>������1-6ѡ���е�һ�</b>
<asp:TextBox id="Choice" runat="server" />
<asp:Button text="��֤" runat=server /><br>
<asp:RangeValidator id="rv"
             ControlToValidate="Choice"
             MinimumValue="1"
             MaximumValue="6"
             ErrorMessage="���������1-6֮�������"
             Type="Integer"
             Display="dynamic" runat="server">
</asp:RangeValidator>
</form>
