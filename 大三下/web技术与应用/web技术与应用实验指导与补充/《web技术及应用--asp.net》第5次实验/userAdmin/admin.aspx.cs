using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //判断相应的Session信息是否存在
        if (Session["username"] != null && Session["userpass"] != null)
        {
            //相应的Session信息存在，进一步判断是否为管理员
            string username = Session["username"].ToString();
            string userpass = Session["userpass"].ToString();
            if (username != "张三" || userpass != "1234567")
            {
                //不是管理员，自动转到登录页面并终止执行当前页
                Response.Redirect("login.aspx", true);
            }
        }
        else
        {
            //相应Session信息不存在，自动转到登录页面并终止执行当前页
            Response.Redirect("login.aspx", true);
        }

    }
}