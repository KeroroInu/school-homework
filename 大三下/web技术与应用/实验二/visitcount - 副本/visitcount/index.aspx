<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="visitcount.index" %>

<!DOCTYPE html pageLayout="FlowLayout">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>访问计数器</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        这个页面是主页，所有用户都有权访问，你可以根据需要加入内容，管理员可以<a href="login.aspx">登录</a>后进入管理页面。
    </div>
    </form>
</body>
</html>
