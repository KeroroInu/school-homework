<%@ Page clienttarget=downlevel Language="C#" %>
<Form RunAt="Server">
<ASP:TextBox id="txtName" RunAt="Server"/>
<ASP:RequiredFieldValidator id="Validator1" Runat="Server"
������ControlToValidate="txtName"
������ErrorMessage="������������"
������Display="Static">
����*������������
</ASP:RequiredFieldValidator>
</Form>
