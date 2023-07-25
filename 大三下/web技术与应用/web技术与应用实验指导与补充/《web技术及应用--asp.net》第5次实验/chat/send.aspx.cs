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
    protected void btnSend_Click(object sender, EventArgs e)
    {
        //定义变量,用来存放一条聊天信息,包括说话者、说话内容、说话日期时间
        string message;
        //获取说话者的名字并用蓝色显示
        message = "<font color='blue'>" + this.txtSender.Text + "</font>说:";
        //获取说话内容
        message += this.txtContent.Text;
        //获取说话日期时间并用斜体显示
        message += "(<i>" + DateTime.Now.ToString() + "</i>)";
        //在每条信息后面加上换行
        message += "<br>";
        Application.Lock();
        //把新聊天信息附加在原来聊天信息的后面并存入Application
        Application["chatcontent"] = (string)Application["chatcontent"] + message;
        Application.UnLock();
        //清空聊天文本框
        this.txtContent.Text = "";

    }
}