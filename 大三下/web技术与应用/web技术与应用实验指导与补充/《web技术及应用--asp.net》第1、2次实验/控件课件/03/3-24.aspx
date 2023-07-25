<%@ Page clienttarget=downlevel Language="C#" %>
<script Language="C#" runat="server">
void ServerValidation(object source, ServerValidateEventArgs args){
   try {
      int i=int.Parse(args.Value);
      args.IsValid=((i%2)==1);
   }
   catch {
      args.IsValid = false;
   }
}
</script><form runat="server">
  <asp:Label id="Message" runat="server" Text="请输入奇数:" 
        Font-Name="Verdana" Font-Size="10pt" />
  <p> <asp:TextBox id="txtOdd" runat="server" />  
  <asp:CustomValidator id="cv"
        ControlToValidate="txtOdd"
        OnServerValidate="ServerValidation"
        ErrorMessage="不是奇数!" Display="Static" runat="server"/>
  <p> <asp:Button id="Button1"
        Text="验证" 
        runat="server"/>
</form>
