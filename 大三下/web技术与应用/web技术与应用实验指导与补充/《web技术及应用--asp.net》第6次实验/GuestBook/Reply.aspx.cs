using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Data.OleDb;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace GuestBook
{
	/// <summary>
	/// test 的摘要说明。
	/// </summary>
	public class Reply : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.TextBox txtReply;
		protected System.Web.UI.WebControls.Button Button2;
		protected System.Web.UI.WebControls.Button Button1;
	
		private void Page_Load(object sender, System.EventArgs e)
		{
			// 在此处放置用户代码以初始化页面
			if(Session["Admin"] == null)
				Response.Redirect("login.aspx");
		}

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN：该调用是 ASP.NET Web 窗体设计器所必需的。
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// 设计器支持所需的方法 - 不要使用代码编辑器修改
		/// 此方法的内容。
		/// </summary>
		private void InitializeComponent()
		{    
			this.Button1.Click += new System.EventHandler(this.Button1_Click);
			this.Button2.Click += new System.EventHandler(this.Button2_Click);
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion

		private void Button1_Click(object sender, System.EventArgs e)
		{
			if(Session["Admin"] != null)
			{
				string id = Request.QueryString["GuestID"];
				string conStr = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath(".") + "..\\DataBase\\data.aspx";
				string updateStr = "update GuestBook set content = content + '<p><font color=#FF0000>管理员(" 
					+ Session["Admin"].ToString() + ")的回复:</font><br><br>"
					+ txtReply.Text + "<font color=#333399></font></p>' where ID = " + id;
				//Label1.Text = Server.HtmlEncode(updateStr);
				OleDbConnection conn = new OleDbConnection(conStr);
				conn.Open();
				OleDbCommand comm = new OleDbCommand(updateStr,conn);
				comm.ExecuteNonQuery();
				conn.Close();
				Response.Write("<script>alert(\"回复成功\");</script>");
				Response.Redirect("view.aspx");
			}
			else
				Response.Redirect("login.aspx");
		}

		private void Button2_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("view.aspx");
		}
	}
}
