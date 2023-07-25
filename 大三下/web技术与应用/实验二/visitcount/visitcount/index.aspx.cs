using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace visitcount
{
    public partial class index : System.Web.UI.Page
    {
          private void Page_Load(object sender, System.EventArgs e)
      {
        //定义一个变量,用来存放新的访问次数
        int ivs;
        //判断计数Cookie是否存在
        if(Request.Cookies["vnumber"]==null)
        {
          //如果计数Cookie不存在,则认为是第一次访问
          ivs=1;
          //设置计数Cookie,存放访问次数
          Response.Cookies["vnumber"].Value=ivs.ToString();
          //设置计数Cookie的有效期为两年
          Response.Cookies["vnumber"].Expires=DateTime.Now.AddYears(2);
          //设置标记Cookie,用来判断用户在过去的10分钟内是否已经访问过
          Response.Cookies["flag"].Value="ok";
          //设置标记Cookie的有效期为10分钟
          Response.Cookies["flag"].Expires=DateTime.Now.AddMinutes(10);
        }
        else
          {
            //如果计数Cookie存在,则进一步判断是否在过去的10分钟内访问过
            if(Request.Cookies["flag"]==null)
            {
              //如果过去10分钟内没有访问过,则计数加1
              ivs=int.Parse(Request.Cookies["vnumber"].Value)+1;
              //把新的计数值存入计数Cookie
              Response.Cookies["vnumber"].Value=ivs.ToString();
              //再次设置计数Cookie的有效期为两年,此句如果省略,则变为Cookie
              Response.Cookies["vnumber"].Expires=DateTime.Now.AddYears(2);
              //设置标记Cookie,说明已经访问过
              Response.Cookies["flag"].Value="ok";
              //设置标记Cookie的有效期为10分钟
              Response.Cookies["flag"].Expires=DateTime.Now.AddSeconds(1);
            }
            else
            {
              //如果标记Cookie存在，则过去10分钟内计数已加1，所以不再加1
              ivs=int.Parse(Request.Cookies["vnumber"].Value);
            }
          }
          //把访问次数显示在页面中
          this.message.Text="<h3>你是第"+ivs.ToString()+"次访问本页面</h3>";
      }

    }
}