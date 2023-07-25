using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnOK_Click(object sender, EventArgs e)
    {
        //定义登录失败时弹出信息框的客户端脚本
        string strno = "<script>alert('用户名或密码不正确！');<" + "/script>";
        //判断是否为管理员，在实际应用中，用户名和密码一般都存在数据库中
        //应先从数据库中读出再进行判断
        if (username.Text == "张三" && userpass.Text == "1234567")
        {
            //登录成功，把用户名和密码都存入Session对象中
            Session["username"] = username.Text;
            Session["userpass"] = userpass.Text;
            //把页面转向到admin.aspx
            Response.Redirect("admin.aspx");
        }
        else
        {
            //登录不成功，并弹出信息
            Page.RegisterClientScriptBlock("loginno", strno);
        }

    }
}