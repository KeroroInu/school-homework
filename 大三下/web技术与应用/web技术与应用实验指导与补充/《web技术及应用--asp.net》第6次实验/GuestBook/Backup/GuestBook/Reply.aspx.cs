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
	/// test ��ժҪ˵����
	/// </summary>
	public class Reply : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.TextBox txtReply;
		protected System.Web.UI.WebControls.Button Button2;
		protected System.Web.UI.WebControls.Button Button1;
	
		private void Page_Load(object sender, System.EventArgs e)
		{
			// �ڴ˴������û������Գ�ʼ��ҳ��
			if(Session["Admin"] == null)
				Response.Redirect("login.aspx");
		}

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN���õ����� ASP.NET Web ���������������ġ�
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// �����֧������ķ��� - ��Ҫʹ�ô���༭���޸�
		/// �˷��������ݡ�
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
				string updateStr = "update GuestBook set content = content + '<p><font color=#FF0000>����Ա(" 
					+ Session["Admin"].ToString() + ")�Ļظ�:</font><br><br>"
					+ txtReply.Text + "<font color=#333399></font></p>' where ID = " + id;
				//Label1.Text = Server.HtmlEncode(updateStr);
				OleDbConnection conn = new OleDbConnection(conStr);
				conn.Open();
				OleDbCommand comm = new OleDbCommand(updateStr,conn);
				comm.ExecuteNonQuery();
				conn.Close();
				Response.Write("<script>alert(\"�ظ��ɹ�\");</script>");
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
