using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Application.Lock();
        Application["count"] = Convert.ToInt32(Application["count"]) + 1;
        Application.UnLock();
        Response.Write("点击量："+G(Convert.ToInt32((Application["count"]))));

    }
    public string G(int counter)
    {
        string myimage = "";
        string S = counter.ToString();
        for (int i = 0; i <= S.Length - 1; i++)
        {
            myimage = myimage + "<IMG SRC=images/" + S.Substring(i, 1) + ".gif>";
        }
        return myimage;
    }
}