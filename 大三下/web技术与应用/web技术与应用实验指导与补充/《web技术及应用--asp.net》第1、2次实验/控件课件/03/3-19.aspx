<%@ Page clienttarget=downlevel Language="C#" %>
<Form RunAt="Server">
<ASP:TextBox id="txtName" RunAt="Server"/>
<ASP:RequiredFieldValidator id="Validator1" Runat="Server"
　　　ControlToValidate="txtName"
　　　ErrorMessage="姓名必须输入"
　　　Display="Static">
　　*姓名必须输入
</ASP:RequiredFieldValidator>
</Form>
