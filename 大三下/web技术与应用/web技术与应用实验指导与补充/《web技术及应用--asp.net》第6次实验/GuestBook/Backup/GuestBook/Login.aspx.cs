using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Configuration;

namespace GuestBook
{
	/// <summary>
	/// Login 的摘要说明。
	/// </summary>
	public class Login : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.Button Button1;
		protected System.Web.UI.WebControls.TextBox txtAdmin;
		protected System.Web.UI.WebControls.TextBox txtPassword;
		protected System.Web.UI.WebControls.Button Button2;
	
		private void Page_Load(object sender, System.EventArgs e)
		{
			// 在此处放置用户代码以初始化页面
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

		private void Button2_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("view.aspx");
		}

		private void Button1_Click(object sender, System.EventArgs e)
		{		
			if((txtAdmin.Text == ConfigurationSettings.AppSettings["User"])&&(txtPassword.Text == ConfigurationSettings.AppSettings["Pass"]))
			{
				Session["Admin"] = "admin";
				Response.Redirect("view.aspx");
			}
			else
				Response.Write("<script>alert(\"管理员名称或密码错误\");</script>");
		}
	}
}
